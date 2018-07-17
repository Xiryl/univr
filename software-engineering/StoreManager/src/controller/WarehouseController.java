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
import com.jfoenix.controls.JFXTextField;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Label;

public class WarehouseController {
    // Region private fields
    private static final String regexText    = "^[A-Za-z0-9 ]+$";
    private static final String regexForDate = "(^(((0[1-9]|1[0-9]|2[0-8])[\\/](0[1-9]|1[012]))|((29|30|31)[\\/](0[13578]|1[02]))|((29|30)[\\/](0[4,6,9]|11)))[\\/](19|[2-9][0-9])\\d\\d$)|(^29[\\/]02[\\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)";
    
    // Region fxml databinding
    @FXML private JFXTextField warehouseInDate            = null;
    @FXML private JFXTextField warehouseInPosition        = null;
    @FXML private JFXTextField warehouseOutDate           = null;
    @FXML private JFXTextField warehouseOutItems          = null;
    @FXML private JFXTextField warehouseOutStoreName      = null;
    @FXML private JFXTextField warehouseOutCourierService = null;
    @FXML private JFXButton    btnWarehouseInDeleteData   = null;
    @FXML private JFXButton    btnWarehouseInEnter        = null;
    @FXML private JFXButton    btnWarehouseOutDeleteData  = null;
    @FXML private JFXButton    btnWarehouseOutExit        = null;
    @FXML private JFXComboBox  cboxArticlesList           = null;
    @FXML private JFXComboBox  cboxArticles               = null;
    @FXML private Label        txtOldPosition             = null;
    @FXML private JFXButton    btnUpdatePosition          = null;
    @FXML private JFXTextField txtPosition                = null;
    
    private Stage _stage;
    private DBConnector db = DBConnector.getInstance();
    
    public WarehouseController() {
    }
    
    public void setWarehouseController(Stage rootStage) {
        _stage = rootStage;
    }
    
    public void initialize() {
        // Fill articles types
        ObservableList<String> tmp1 = FXCollections.observableArrayList(db.sqlGetArticleTypes());
        cboxArticlesList.setItems(tmp1);
        cboxArticles.setItems(tmp1);

    }
    
    @FXML
    void updatePosition() {
        String value = txtPosition.getText();
        if(value.isEmpty() || value == null || value == "") {
            new Alert(Alert.AlertType.ERROR, "inserisci una nuova posizione!", ButtonType.OK).show();   
            return;
        }
        
        db.sqlUpdatePosition(value, db.sqlGetArticleId(cboxArticles.getValue().toString()));
        
        txtPosition.clear();
        txtOldPosition.setText("");
    }
    
    
    
    @FXML
    void handleChoseArticle() {
        try {
        int value = db.sqlGetArticleId(cboxArticles.getValue().toString());
         System.out.println(value);
         txtOldPosition.setText(db.sqlGetWarehousePosition(value));
        }
        catch (Exception ex) {
        
        }
    }
    // Left UI
    @FXML
    void handleDeleteWarehouseInDataClick() {
        Log.INFO(getClass().getName(), "btnWarehouseInDeleteData Clicked", "", "");
        warehouseInDate.setText("");
        warehouseInPosition.setText("");
    }
    
    @FXML
    void handleWarehouseInEnterClick() {
        Log.INFO(getClass().getName(), "btnWarehouseInEnter Clicked", "", "");
        
        // Check if data is valid
        boolean isDataValid = isWarehouseInCredentialCorrect();
        System.out.println(isDataValid);
        
        if (!isDataValid) {
            new Alert(Alert.AlertType.ERROR, "Dati inseriti in warehouse_in errati!", ButtonType.OK).show();   
            // Exit
            return;
        }
        
        // Prepare data
        String date     = warehouseInDate.getText();
        String type     = cboxArticlesList.getValue().toString();
        String position = warehouseInPosition.getText();
        
        int articleId = db.sqlGetArticleId(type);
        if (articleId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nel tipo di articolo!", ButtonType.OK).show();
            // Exit
            return;
        }
        
        // Create warehouse in
        db.sqlInsertWarehouseIn(date, position, Integer.toString(articleId));
        warehouseInDate.setText(null);
        warehouseInPosition.setText(null);
        new Alert(Alert.AlertType.CONFIRMATION, "Oggetto aggiunto!", ButtonType.OK).show();
    }
    
    protected boolean isWarehouseInCredentialCorrect() {
        if (CheckRegex(warehouseInDate.getText(), regexForDate)           && 
            CheckRegex(warehouseInPosition.getText(), regexText)) {
            return true;
        } else {
            Log.ERROR(getClass().getName(), "IsWarehouseInCredentialCorrect", "Credential Error", "");
        }
        return false;
    }
    
    protected boolean isWarehouseOutCredentialCorrect() {
        if (CheckRegex(warehouseOutDate.getText(), regexForDate)   && 
            CheckRegex(warehouseOutItems.getText(), regexText)     &&
            CheckRegex(warehouseOutStoreName.getText(), regexText) &&
            CheckRegex(warehouseOutCourierService.getText(), regexText)) {
            return true;
        } else {
            Log.ERROR(getClass().getName(), "IsWarehouseOutCredentialCorrect", "Credential Error", "");
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
