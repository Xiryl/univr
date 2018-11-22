/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package controller;

import com.jfoenix.controls.JFXPasswordField;
import helper.Log;
import javafx.fxml.FXML;
import model.DBConnector;
import javafx.stage.Stage;
import javafx.event.EventHandler;
import javafx.scene.control.Alert;
import javafx.application.Platform;
import javafx.scene.control.Button;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.control.TextField;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Alert.AlertType;

public class LoginLayoutController {
    // Region private fields
    private static final String regexForUsername = "^[A-Za-z]+$";
    private static final String regexForPassword = "^[A-Za-z0-9]+$";

    // Region fxml databinding
    @FXML private TextField     txtUsername = null;
    @FXML private JFXPasswordField     txtPwd= null;
    @FXML private Button        btnLogin    = null;
    @FXML private Button        btnRegister = null;
    @FXML private ImageView     btnClose    = null;
    
    private static Stage rootStage;
    private DBConnector db = DBConnector.getInstance();
    private final String TAG_CLASS = getClass().getName();
   
    public LoginLayoutController() {
    }
    
    public void setLoginStage(Stage rootStage) {
        this.rootStage = rootStage;
        
        btnClose.addEventHandler(MouseEvent.MOUSE_CLICKED, new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                Log.INFO(TAG_CLASS, "btnExit Clicked", "", "");
                event.consume();
                
                // Exit
                Platform.exit();
                System.exit(0);
            }
       });
    }
    
    @FXML
    public void handleLoginClick() {
        Log.INFO(TAG_CLASS, "btnLogin Clicked", "", "");
        
        int user_type = IsCredentialCorrect();
        
        if (user_type < 0) {
            new Alert(AlertType.ERROR, "Username o password errate!", ButtonType.OK).show();
            return;
        }
        
        // Opening of the correct panels according to the user
        if (user_type == 1010) {
            rootStage.hide();
            new LaunchAdministrationController(rootStage);
        } else if (user_type == 3030) {
            rootStage.hide();
            new LaunchOrderController(rootStage);
        } else if (user_type == 2020) {
            rootStage.hide();
            new LaunchWarehouseController(rootStage);
        }
    }
    
    protected boolean CheckRegex(String value, String regexToMatch) {
        if (value.matches(regexToMatch)) {
            Log.INFO(TAG_CLASS, "CheckRegex", "Regex OK", "");
            return true;
        }
        
        Log.ERROR(TAG_CLASS, "CheckRegex", "Regex ERROR", "");
        return false;
    }
    
    protected int IsCredentialCorrect() {
        if (CheckRegex(txtUsername.getText(), regexForUsername) && 
            CheckRegex(txtPwd.getText(), regexForPassword)) {
            // Check if we have a match in database
            return db.AuthUser(txtUsername.getText(), txtPwd.getText());
        } else {
            Log.ERROR(TAG_CLASS, "IsCredentialCorrect", "Credential Error", "");
            return -1;
        }
    }
}
