/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package controller;

import helper.Log;
import javafx.fxml.FXML;
import model.DBConnector;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import com.jfoenix.controls.JFXButton;
import javafx.scene.control.ButtonType;
import com.jfoenix.controls.JFXComboBox;
import javafx.collections.FXCollections;
import com.jfoenix.controls.JFXTextField;
import javafx.collections.ObservableList;

public class OrderController {
    // Region private fields
    private static final String regexText   = "^[A-Za-z0-9 ]+$";
    private static final String regexPrice  = "^[0-9.]+$";
    private static final String regexDate   = "(^(((0[1-9]|1[0-9]|2[0-8])[\\/](0[1-9]|1[012]))|((29|30|31)[\\/](0[13578]|1[02]))|((29|30)[\\/](0[4,6,9]|11)))[\\/](19|[2-9][0-9])\\d\\d$)|(^29[\\/]02[\\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)";
    
    // Region fxml databinding
    @FXML private JFXComboBox  cboxCouriers         = null;
    @FXML private JFXComboBox  cboxArticletypes     = null;
    @FXML private JFXComboBox  cboxStoreName        = null;
    @FXML private JFXTextField orderQuantity        = null;
    @FXML private JFXTextField orderDate            = null;
    @FXML private JFXTextField orderTotalPrice      = null;
    @FXML private JFXButton    btnOrderNow          = null;
    @FXML private JFXButton    btnOrderSummary      = null;
    @FXML private JFXButton    btnDeleteOrderData   = null;
    
    private Stage _stage;
    private DBConnector db = DBConnector.getInstance();
    
    public OrderController() {
    }
    
    public void setOrderStage(Stage rootStage) {
        _stage = rootStage;
    }
    
    public void initialize() {
        // Fill articles types
        ObservableList<String> tmp1 = FXCollections.observableArrayList(db.sqlGetArticleTypes());
        cboxArticletypes.setItems(tmp1);
        
        // Fill store names      
        ObservableList<String> tmp2 = FXCollections.observableArrayList(db.sqlGetStoreNames());
        cboxStoreName.setItems(tmp2);
        
        // Fill couriers     
        ObservableList<String> tmp3 = FXCollections.observableArrayList(db.sqlGetCouriers());
        cboxCouriers.setItems(tmp3);  
    }
    
    @FXML 
    void handlebtnDeleteOrderDataClick() {
        Log.INFO(getClass().getName(), "btnDeleteOrderData Clicked", "", "");
        orderQuantity.setText("");
        orderDate.setText("");
        orderTotalPrice.setText("");
    }
    
    @FXML
    void handleOrderSummaryClick() {
        new LaunchOrderHistoryController(_stage);
    }
        
    @FXML
    public void handleOrderNowClick() {
        Log.INFO(getClass().getName(), "btnOrderNow Clicked", "", "");
        
        // Check if data is valid
        boolean isDataValid = isCredentialCorrect();
        System.out.println(isDataValid);
        
        if (isDataValid == false) {
            new Alert(Alert.AlertType.ERROR, "Dati inseriti errati!", ButtonType.OK).show();           
            // Exit
            return; 
        }
        
        // Get order details
        // Bill of the order
        String billDescription = "Fattura creata il " + orderDate.getText();
        db.sqlCreateNewBill(billDescription);
        int billId = db.sqlGetBillId(billDescription);
        if (billId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nella creazione della fattura!", ButtonType.OK).show();
            // Exit
            return; 
        }
        
        // Shop of the order
        String shopId = db.sqlGetShopId(cboxStoreName.getValue().toString());
        if (shopId == "") {
            new Alert(Alert.AlertType.ERROR, "Errore nello store name!", ButtonType.OK).show();
            // Exit
            return; 
        }
        
        // Courrier of the order
        int courierId = db.sqlGetCourierId(cboxCouriers.getValue().toString());
        if (courierId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nel corriere!", ButtonType.OK).show();
            // Exit
            return; 
        }
        
        // Insert the exit order in the warehouse
        System.out.println("****OK****" + billId + "- " + shopId + "- " + courierId);
        db.sqlInsertToWarehouse(billId, shopId, courierId);

        // Get the exit order ID
        int warehouseOutId = db.sqlGetWarehouseOutId(billId, shopId, courierId);
        if (warehouseOutId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nell'inserimento dell'ordine in uscita dal magazzino!", ButtonType.OK).show();
            // Exit
            return; 
        }
    
        // Create order
        db.sqlInsertOrder(warehouseOutId, orderDate.getText());
        int orderId = db.sqlGetOrderId(warehouseOutId, orderDate.getText());
        if (orderId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nella crezione dell'ordine!", ButtonType.OK).show();
            // Exit
            return; 
        }
        
        // Insert order detail
        db.sqlInsertOrderDetail(orderId, courierId, billId, orderTotalPrice.getText());
        new Alert(Alert.AlertType.CONFIRMATION, "Ordinato!", ButtonType.OK).show();
    }
        
    protected boolean isCredentialCorrect() {
        if (CheckRegex(orderQuantity.getText(), regexText) &&
            CheckRegex(orderDate.getText(), regexDate)     &&
            CheckRegex(orderTotalPrice.getText(), regexPrice)) {       
            return true;
        } else {
            Log.ERROR(getClass().getName(), "isCredentialCorrect", "Credential Error", "");
        }
        return false;
    }
    
    protected boolean CheckRegex(String value, String regexToMatch) {
        if (value.matches(regexToMatch)) {
            Log.INFO(getClass().getName(), "CheckRegex", "Regex OK", "");
            return true;
        } else {
            Log.ERROR(getClass().getName(), "CheckRegex", "Regex ERROR", "");
        }
        return false;
    }
}
