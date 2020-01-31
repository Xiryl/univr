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

public class LaunchWarehouseController extends Application {
    private static final String WAREHOUSE_FXML_PATH = "/view/Warehouse.fxml";
    private double xOffset = 0; 
    private double yOffset = 0; 
    
    @Override
    public void start(Stage primaryStage) {
    }
    
    public LaunchWarehouseController(Stage primaryStage) {
         try {
            Log.INFO(getClass().getName(),"Starting WarehouseForm..","", "");

            FXMLLoader orderLoader = new FXMLLoader();
            orderLoader.setLocation(Main.class.getResource(WAREHOUSE_FXML_PATH));
            AnchorPane loginRoot = (AnchorPane) orderLoader.load();

            // Creation of stages and scenes
            Stage warehouseStage = new Stage();
            warehouseStage.setTitle("Portal warehouse");
            warehouseStage.initModality(Modality.APPLICATION_MODAL);
            warehouseStage.initOwner(primaryStage);
            Scene administrationMainScene = new Scene(loginRoot);
            warehouseStage.setScene(administrationMainScene);

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
                    warehouseStage.setX(event.getScreenX() - xOffset); 
                    warehouseStage.setY(event.getScreenY() - yOffset); 
                } 
            }); 

            // Assign the controller
            WarehouseController myController = (WarehouseController) orderLoader.getController();
            myController.setWarehouseController(warehouseStage);

            warehouseStage.show();
        } catch (IOException ex) {
            System.err.println("File " + WAREHOUSE_FXML_PATH + " non trovato");
            System.err.println(ex);
        } catch (Exception ex) {
            System.err.println("Err main.java");
            ex.printStackTrace();
        }
    }
}