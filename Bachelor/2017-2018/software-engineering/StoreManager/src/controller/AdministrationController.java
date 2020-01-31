/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package controller;

import helper.Log;
import javafx.fxml.FXML;
import model.DBConnector;
import javafx.stage.Stage;
import javafx.scene.text.Text;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import com.jfoenix.controls.JFXComboBox;
import javafx.collections.FXCollections;
import com.jfoenix.controls.JFXTextField;
import javafx.collections.ObservableList;

public class AdministrationController {
    // Region private fields
    private static final String regexText              = "^[A-Za-z0-9 ]+$";
    private static final String regexPrice             = "^[.0-9]+$";
    private static final String regexDate              = "(^(((0[1-9]|1[0-9]|2[0-8])[\\/](0[1-9]|1[012]))|((29|30|31)[\\/](0[13578]|1[02]))|((29|30)[\\/](0[4,6,9]|11)))[\\/](19|[2-9][0-9])\\d\\d$)|(^29[\\/]02[\\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)";
    
    // Region fxml databinding
    @FXML private JFXTextField typeArticleName         = null;
    @FXML private JFXTextField typeArticleDescription  = null;
    @FXML private JFXTextField typeArticleMaterials    = null;
    @FXML private JFXTextField articleDateOfProduction = null;
    @FXML private JFXTextField articlePrice            = null;
    @FXML private JFXComboBox  cboxArticleSport        = null;
    @FXML private JFXComboBox  cboxArticlesList        = null;
    @FXML private Text         articleDescription      = null;
    
    private Stage _stage;
    private DBConnector db = DBConnector.getInstance();
    
    public AdministrationController(){   
    }
    
    public void setAdministrationController(Stage rootStage) {
        _stage = rootStage;
    }
    
    public void initialize() {
        // Fill sport
        initializeSport();
        // Fill articles
        initializeArticle();
    }
    
    public void initializeSport() {
        ObservableList<String> tmp = FXCollections.observableArrayList(db.sqlGetAllSports());
        cboxArticleSport.setItems(tmp);
    }
    
    public void initializeArticle() {
        ObservableList<String> tmp1 = FXCollections.observableArrayList(db.sqlGetArticleTypes());
        cboxArticlesList.setItems(tmp1);
    }
    
    @FXML 
    void cboxArticleOnActionHandler() {
        try {
        String value = cboxArticlesList.getValue().toString();
        articleDescription.setText("Description: " + db.sqlGetArticleDecsription(value));
        }
        catch (Exception ex){
            
        }
    }
    
    @FXML
    void handleBtnWareHouseHistory() {
        new LaunchWarehouseHistoryController(_stage);
    }
    
    @FXML
    void handleDeleteTypeOfArticleData() {
        Log.INFO(getClass().getName(), "btnTypeOfArticleDeleteData Clicked", "", "");
        typeArticleName.setText("");
        typeArticleDescription.setText("");
        typeArticleMaterials.setText("");
    }
    
    @FXML
    void handleDeleteArticleData() {
        Log.INFO(getClass().getName(), "btnArticleDeleteData Clicked", "", "");
        articleDateOfProduction.setText("");
        articlePrice.setText("");
    }
      
    // Left UI
    @FXML
    void handleInsertTypeOfArticleClick() {
        Log.INFO(getClass().getName(), "btnInsertTypeOfArticle Clicked", "", "");
        
        // Check if data is valid
        boolean isDataValid = isInsertTypeOfArticleCorrect();
        System.out.println(isDataValid);
        
        if (!isDataValid) {
            new Alert(Alert.AlertType.ERROR, "Dati errati o mancanti!", ButtonType.OK).show();
            // Exit
            return; 
        } 
        
        // Prepare data
        String name        = typeArticleName.getText();
        String description = typeArticleDescription.getText();
        String sport       = cboxArticleSport.getValue().toString();
        String materials   = typeArticleMaterials.getText();
        
        int sportId = db.sqlGetSportId(sport); 
        if (sportId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nello sport!", ButtonType.OK).show();
            // Exit
            return; 
        }
        
        db.sqlCreateNewArticleType(name, description, sportId, 3);
        new Alert(Alert.AlertType.CONFIRMATION, "Oggetto aggiunto!", ButtonType.OK).show();
        
        // Refresh comboboxes
        initialize();
    }
    
    // Right UI
    @FXML
    void handleInsertArticleClick() {
        Log.INFO(getClass().getName(), "btnInsertTypeOfArticle Clicked", "", "");
                
        // Check if data is correct
        boolean isDataValid = isInsertArticleCorrect();
        System.out.println(isDataValid);
        
        if (!isDataValid) {
            new Alert(Alert.AlertType.ERROR, "Dati errati o mancanti!", ButtonType.OK).show();
            // Exit
            return; 
        } 
        
        // Prepare data
        String type  = cboxArticlesList.getValue().toString();
        System.out.println("tipo:" + type);
        String price = articlePrice.getText();
        String data  = articleDateOfProduction.getText();
        
        int articleId = db.sqlGetArticleId(type); 
        if (articleId == -1) {
            new Alert(Alert.AlertType.ERROR, "Errore nel tipo di articolo!", ButtonType.OK).show();
            // Exit
            return;
        }
        
        db.sqlCreateNewArticle(articleId, price, data);
        new Alert(Alert.AlertType.CONFIRMATION, "Articolo aggiunto!", ButtonType.OK).show();
        
        // Refresh comboboxes
        initialize();
    }
    
    protected boolean isInsertTypeOfArticleCorrect() {
        // Match text regex
        if (CheckRegex(typeArticleName.getText(), regexText)          && 
            CheckRegex(typeArticleDescription.getText(), regexText)   &&
            CheckRegex(typeArticleMaterials.getText(), regexText)) {
            return true;
        }
        
        Log.ERROR(getClass().getName(), "isInsertArticleCorrect", "Credential Error", "");
        return false;
    }
    
    protected boolean isInsertArticleCorrect() {
        if (CheckRegex(articleDateOfProduction.getText(), regexDate) && 
            CheckRegex(articlePrice.getText(), regexPrice)           &&
            CheckRegex(cboxArticlesList.getValue().toString(), regexText)) {
            return true;
        }
        
        Log.ERROR(getClass().getName(), "isInsertArticleCorrect", "Credential Error", "");
        return false;
    }
    
    protected boolean CheckRegex(String value, String regexToMatch) {
        if (value.matches(regexToMatch)) {
            Log.INFO(getClass().getName(), "CheckRegex", "Regex OK", "");
            return true;
        }
        
        Log.ERROR(getClass().getName(), "CheckRegex", "Regex ERROR", "");
        return false;
    }    
}
