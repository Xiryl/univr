/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package controller;

import java.util.List;
import javafx.fxml.FXML;
import model.DBConnector;
import javafx.stage.Stage;
import helper.ItemWarehouseHistoryRow;
import javafx.scene.control.TableView;
import javafx.scene.control.TableColumn;
import javafx.scene.control.cell.PropertyValueFactory;

public class WarehouseHistoryController {
    // Region fxml databinding
    @FXML private TableView listTableView = null;
    
    private Stage _stage;
    private DBConnector db = DBConnector.getInstance();

    public WarehouseHistoryController() {   
    }
    
    public void setWarehouseHistoryController(Stage rootStage) {
        _stage = rootStage;
    }

    public void initialize() {
        TableColumn nameColumn = new TableColumn("ID USCITA");
        nameColumn.setCellValueFactory(new PropertyValueFactory<>("IdWarehouseOut"));
        
        TableColumn nameColumn1 = new TableColumn("NEGOZIO");
        nameColumn1.setCellValueFactory(new PropertyValueFactory<>("NameCourier"));
        
        TableColumn nameColumn2 = new TableColumn("CF NEGOZIO");
        nameColumn2.setCellValueFactory(new PropertyValueFactory<>("CfShop"));
        
        TableColumn nameColumn3 = new TableColumn("DESC. FATTURA");
        nameColumn3.setCellValueFactory(new PropertyValueFactory<>("DescriptionBill"));
        
        TableColumn nameColumn4 = new TableColumn("CORRIERE");
        nameColumn4.setCellValueFactory(new PropertyValueFactory<>("DescriptionCourier"));
        
        TableColumn nameColumn5 = new TableColumn("PREZZO");
        nameColumn5.setCellValueFactory(new PropertyValueFactory<>("Price"));
        
        TableColumn nameColumn6 = new TableColumn("DATA");
        nameColumn6.setCellValueFactory(new PropertyValueFactory<>("Date"));
        
        TableColumn nameColumn7 = new TableColumn("ARTICOLO");
        nameColumn7.setCellValueFactory(new PropertyValueFactory<>("NameArticle"));
        
        listTableView.getColumns().addAll(nameColumn, nameColumn1, nameColumn2, nameColumn3, nameColumn4, nameColumn5, nameColumn6, nameColumn7);
        List<ItemWarehouseHistoryRow> tmp = db.sqlGetWarehouseHistoryData();
        
        if (tmp != null ) {
            for (ItemWarehouseHistoryRow item : tmp) {
                listTableView.getItems().add(item);
            }
        }
    }    
}
