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
import javafx.event.EventHandler;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.application.Application;

public class LaunchAdministrationController extends Application {
    private static final String ADMINISTRATION_FXML_PATH = "/view/Administration.fxml";
    private double xOffset = 0; 
    private double yOffset = 0; 
    
    @Override
    public void start(Stage primaryStage) {
    }
    
    public LaunchAdministrationController(Stage primaryStage) {
         try {
            Log.INFO(getClass().getName(),"Starting AdministrationForm..","", "");

            FXMLLoader orderLoader = new FXMLLoader();
            orderLoader.setLocation(Main.class.getResource(ADMINISTRATION_FXML_PATH));
            AnchorPane loginRoot = (AnchorPane) orderLoader.load();

            // Creation of stages and scenes
            Stage administrationStage = new Stage();
            administrationStage.setTitle("Portal administrative secretariat");
            administrationStage.initModality(Modality.APPLICATION_MODAL);
            administrationStage.initOwner(primaryStage);
            Scene administrationMainScene = new Scene(loginRoot);
            administrationStage.setScene(administrationMainScene);

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
                    administrationStage.setX(event.getScreenX() - xOffset); 
                    administrationStage.setY(event.getScreenY() - yOffset); 
                } 
            }); 

            // Assign the controller
            AdministrationController myController = (AdministrationController) orderLoader.getController();
            myController.setAdministrationController(administrationStage);

            administrationStage.show();
        } catch (IOException ex) {
            System.err.println("File " + ADMINISTRATION_FXML_PATH + " non trovato");
            System.err.println(ex);
        } catch (Exception ex) {
            System.err.println("Err main.java");
            ex.printStackTrace();
        }
    }
}