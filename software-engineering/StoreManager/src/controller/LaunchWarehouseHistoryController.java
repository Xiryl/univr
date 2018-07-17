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


public class LaunchWarehouseHistoryController extends Application {
    private static final String ORDERHISTORY_FXML_PATH = "/view/WarehouseHistory.fxml";
    private double xOffset = 0; 
    private double yOffset = 0; 
    
    @Override
    public void start(Stage primaryStage) { 
    }
    
    public LaunchWarehouseHistoryController(Stage primaryStage) {
         try {
            Log.INFO(getClass().getName(),"Starting LaunchOrderHistoryController..","", "");

            FXMLLoader orderLoader = new FXMLLoader();
            orderLoader.setLocation(Main.class.getResource(ORDERHISTORY_FXML_PATH));
            AnchorPane loginRoot = (AnchorPane) orderLoader.load();

            // Creation of stages and scenes
            Stage warehouseHistoryStage = new Stage();
            warehouseHistoryStage.setTitle("Portal ORDERHISTORY secretariat");
            warehouseHistoryStage.initModality(Modality.APPLICATION_MODAL);
            warehouseHistoryStage.initOwner(primaryStage);
            Scene administrationMainScene = new Scene(loginRoot);
            warehouseHistoryStage.setScene(administrationMainScene);

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
                    warehouseHistoryStage.setX(event.getScreenX() - xOffset); 
                    warehouseHistoryStage.setY(event.getScreenY() - yOffset); 
                } 
            }); 

            // Assign the controller
            WarehouseHistoryController myController = (WarehouseHistoryController) orderLoader.getController();
            myController.setWarehouseHistoryController(warehouseHistoryStage);

            warehouseHistoryStage.show();
        } catch (IOException ex) {
            System.err.println("File " + ORDERHISTORY_FXML_PATH + " non trovato");
            System.err.println(ex);
        } catch (Exception ex) {
            System.err.println("Err main.java");
            ex.printStackTrace();
        }
    }
}