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

public class LaunchOrderController extends Application {
    private static final String ORDER_FXML_PATH = "/view/Order.fxml";
    private double xOffset = 0; 
    private double yOffset = 0; 
    
    @Override
    public void start(Stage primaryStage) {   
    }
    
    public LaunchOrderController(Stage primaryStage) {
         try {
            Log.INFO(getClass().getName(),"Starting OrderForm..","", "");

            FXMLLoader orderLoader = new FXMLLoader();
            orderLoader.setLocation(Main.class.getResource(ORDER_FXML_PATH));
            AnchorPane loginRoot = (AnchorPane) orderLoader.load();

            // Creation of stages and scenes
            Stage ordercotntrollerStage = new Stage();
            ordercotntrollerStage.setTitle("Portal store managers");
            ordercotntrollerStage.initModality(Modality.APPLICATION_MODAL);
            ordercotntrollerStage.initOwner(primaryStage);
            Scene administrationMainScene = new Scene(loginRoot);
            ordercotntrollerStage.setScene(administrationMainScene);

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
                    ordercotntrollerStage.setX(event.getScreenX() - xOffset); 
                    ordercotntrollerStage.setY(event.getScreenY() - yOffset); 
                } 
            }); 

            // Assign the controller
            OrderController myController = (OrderController) orderLoader.getController();
            myController.setOrderStage(ordercotntrollerStage);

            ordercotntrollerStage.show();
        } catch (IOException ex) {
            System.err.println("File " + ORDER_FXML_PATH + " non trovato");
            System.err.println(ex);
        } catch (Exception ex) {
            System.err.println("Err main.java");
            ex.printStackTrace();
        }
    }
}