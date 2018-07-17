/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package controller;

import java.util.List;
import javafx.fxml.FXML;
import model.DBConnector;
import javafx.stage.Stage;
import helper.ItemHistoryRow;
import javafx.scene.control.TableView;
import javafx.scene.control.TableColumn;
import javafx.scene.control.cell.PropertyValueFactory;

public class OrderHistoryController {
    // Region fxml databinding
    @FXML private TableView listTableView = null;
    
    private Stage _stage;
    private DBConnector db = DBConnector.getInstance();

    public OrderHistoryController() {
    }
    
    public void setOrderHistoryController(Stage rootStage) {
        _stage = rootStage;
    }

    public void initialize() {
        TableColumn nameColumn = new TableColumn("IdOrdine");
        nameColumn.setCellValueFactory(new PropertyValueFactory<>("IdOrdine"));
        
        TableColumn nameColumn1 = new TableColumn("Data");
        nameColumn1.setCellValueFactory(new PropertyValueFactory<>("Data"));
        
        TableColumn nameColumn2 = new TableColumn("Nome Articolo");
        nameColumn2.setCellValueFactory(new PropertyValueFactory<>("NomeArticolo"));
        
        TableColumn nameColumn3 = new TableColumn("Quantita");
        nameColumn3.setCellValueFactory(new PropertyValueFactory<>("Qta"));
        
        TableColumn nameColumn4 = new TableColumn("Costo");
        nameColumn4.setCellValueFactory(new PropertyValueFactory<>("Costo"));
        
        listTableView.getColumns().addAll(nameColumn, nameColumn1, nameColumn2, nameColumn3, nameColumn4);
        List<ItemHistoryRow> tmp = db.sqlGetOrderHistoryData();
        if (tmp != null ) {
            for (ItemHistoryRow item : tmp) {
                listTableView.getItems().add(item);
            }
        }   
    }    
}
