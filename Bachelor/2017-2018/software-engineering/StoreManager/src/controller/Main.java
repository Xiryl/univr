/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package controller;

import helper.Log;
import javafx.stage.Stage;
import javafx.scene.Scene;
import java.io.IOException;
import javafx.stage.Modality;
import javafx.fxml.FXMLLoader;
import javafx.stage.StageStyle;
import javafx.event.EventHandler;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.application.Application;

public class Main extends Application {
    private static final String LOGIN_FXML_PATH = "/view/Login.fxml";
    private double xOffset = 0; 
    private double yOffset = 0; 

    @Override
     public void start(Stage primaryStage) {	
        try {
            Log.INFO(getClass().getName(),"Starting StoreManager..","", "");

            FXMLLoader loginLoader = new FXMLLoader();
            loginLoader.setLocation(Main.class.getResource(LOGIN_FXML_PATH));
            AnchorPane loginRoot = (AnchorPane) loginLoader.load();
            
            // Creation of stages and scenes
            Stage loginStage = new Stage();
            loginStage.setTitle("Login");
            loginStage.initModality(Modality.APPLICATION_MODAL);
            loginStage.initOwner(primaryStage);
            loginStage.initStyle(StageStyle.UNDECORATED); 
            loginStage.initStyle(StageStyle.TRANSPARENT); 
            Scene loginMainScene = new Scene(loginRoot);
            loginStage.setScene(loginMainScene);
            loginMainScene.setFill(javafx.scene.paint.Color.TRANSPARENT); 

            // For moving window
            loginRoot.setOnMousePressed(new EventHandler<MouseEvent>() { 
                @Override 
                public void handle(MouseEvent event) { 
                    xOffset = event.getSceneX(); 
                    yOffset = event.getSceneY(); 
                } 
            }); 

            // For moving window
            loginRoot.setOnMouseDragged(new EventHandler<MouseEvent>() { 
                @Override 
                public void handle(MouseEvent event) { 
                    loginStage.setX(event.getScreenX() - xOffset); 
                    loginStage.setY(event.getScreenY() - yOffset); 
                } 
            }); 

            // Assign the controller
            LoginLayoutController myController = (LoginLayoutController) loginLoader.getController();
            myController.setLoginStage(loginStage);

            loginStage.show();
        } catch (IOException ex) {
            System.err.println("File " + LOGIN_FXML_PATH + " non trovato");
            System.err.println(ex);
        } catch (Exception ex) {
            System.err.println("Err main.java");
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
