/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

/* 
 * For documentation of this class make reference to:
 * https://dev.mysql.com/doc/connector-j/8.0/en/connector-j-usagenotes-connect-drivermanager.html
 */

package model;

import helper.Log;
import java.util.Date;
import java.util.List;
import helper.Strings;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;
import helper.ItemHistoryRow;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javafx.scene.control.Alert;
import java.sql.PreparedStatement;
import helper.ItemWarehouseHistoryRow;
import javafx.scene.control.ButtonType;

public class DBConnector {
    
    // MySQL server connection
    private Connection        mysqlCon = null;
    private ProprietiesLoader pLoader  = null;;
    
    private static DBConnector instance;
    public static DBConnector getInstance() {
        if (instance == null) {
            instance = new DBConnector();
        }
        
        return instance;
    }
    
    private DBConnector() {
        try {
            pLoader = new ProprietiesLoader();
            mysqlCon = DriverManager.getConnection("jdbc:mysql://"+pLoader.getDatabaseHost()+":"+pLoader.getDatabasePort()+"/nomeDatabase?user="+pLoader.getDatabaseUser()+"&password="+pLoader.getDatabasePassword());
            // Do something with the connection
            Log.INFO(getClass().getName(), "Connected to Mysql", "", "");
        } catch (SQLException sqlEx) {
            // Handle errors
            System.err.println("SQLException: " + sqlEx.getMessage());
            System.err.println("SQLState: " + sqlEx.getSQLState());
            System.err.println("VendorError: " + sqlEx.getErrorCode());
        } catch (Exception ex) {
            System.err.println("Error on DBConnector (main): " + ex);
        }
    }
    
    public int AuthUser(String user, String password) {
        Log.INFO(getClass().getName(), "execute AuthUser", "", "");
        
        // MySQL statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryAuthUser;
        PreparedStatement loginQueryStatement = null;
        
        try {
            // Use parameters for prevent sql injection
            loginQueryStatement = mysqlCon.prepareStatement(_query);
            loginQueryStatement.setString(1, user);
            loginQueryStatement.setString(2, password);
            loginQueryStatement.setString(3, pLoader.getMySqlAESToken());

            res = loginQueryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();

                // display user type
                switch(res.getString("userType")) {
                    case "1010":
                        //new Alert(Alert.AlertType.ERROR, "AMMINISTRATORE", ButtonType.OK).show();
                        return 1010;
                        
                    case "2020":
                        //new Alert(Alert.AlertType.ERROR, "AMMINISTRATORE", ButtonType.OK).show();
                        return 2020;
                        
                        case "3030":
                        //new Alert(Alert.AlertType.ERROR, "AMMINISTRATORE", ButtonType.OK).show();
                        return 3030;
                    default:
                        new Alert(Alert.AlertType.ERROR, "Non trovato", ButtonType.OK).show();
                        break;
                }
            }
        
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "AuthUser", "Empty Set", "");
                return -1;
            }
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (AuthUser): " + ex);
            Log.ERROR(getClass().getName(), "AuthUser", "Exception", ex.getMessage());
            return -1;
        }
        return 1;
    }
    
    public List<String> sqlGetAllSports() {
        Log.INFO(getClass().getName(), "execute sqlGetAllSports", "", "");
        
        List<String> values = new ArrayList<>();
        
        // mysql statemant & query
        ResultSet         res             = null;
        final String      _query          = Strings.sqlQuerySelectAllSport;
        PreparedStatement queryStatement  = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                values.add(res.getString("description"));
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetAllSports", "Empty Set", "");
                values = null;
            }
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetAllSports): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetAllSports", "Exception", ex.getMessage());
            values = null;
        }
        
        return values;
    }
    
     public int sqlGetSportId(String sport) {
        Log.INFO(getClass().getName(), "execute sqlGetSportId", "", "");
         
        // mysql statemant & query
        ResultSet         res             = null;
        final String      _query          = Strings.sqlQueryGetSportId;
        PreparedStatement queryStatement  = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, sport);
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return Integer.parseInt(res.getString("idSport"));
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetSportId", "Empty Set", "");
                return -1;
            }
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetSportId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetSportId", "Exception", ex.getMessage());
        }
        
        return -1;
    }
     
    public List<String> sqlGetArticleTypes() {
        Log.INFO(getClass().getName(), "execute sqlGetArticleTypes", "", "");
        
        
        List<String> tmp = new ArrayList<>();
        
        // mysql statemant & query
        ResultSet         res            = null;
        final String      _query         = Strings.sqlQyerySelectAllArticleTypes;
        PreparedStatement queryStatement = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                if(!tmp.contains(res.getString("name")))
                { 
                    tmp.add(res.getString("name"));
                }
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetArticleTypes", "Empty Set", "");
                return (tmp = null);
            }
            
            return tmp;
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetArticleTypes): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetArticleTypes", "Exception", ex.getMessage());
        }
        
        return (tmp = null);
    }
     
    public void sqlCreateNewArticleType(String name, String description, int idSport, int material) {
        Log.INFO(getClass().getName(), "execute sqlCreateNewArticleType", "", "");
        
        
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryInsertNewArticleType;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, name);
            queryStatement.setString(2, description);
            queryStatement.setInt(3, idSport);
            queryStatement.setInt(4, material);
            
            queryStatement.execute();
            
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlCreateNewArticleType): " + ex);
            Log.ERROR(getClass().getName(), "sqlCreateNewArticleType", "Exception", ex.getMessage());
        }
    }
    
    public void sqlCreateNewArticle(int idArticle, String price, String date) {
        Log.INFO(getClass().getName(), "execute sqlCreateNewArticle", "", "");
        
        
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryInsertNewArticle;
        PreparedStatement queryStatement      = null;
        
        
        
        try {
            // This throws a ParseException
            Date d = new SimpleDateFormat("dd/MM/yyyy").parse(date); 

            // Get date
            java.sql.Date _date = new java.sql.Date(d.getTime());
            
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, idArticle);                      // idArticle
            queryStatement.setDouble(2, Double.parseDouble(price));   // price
            queryStatement.setDate(3, _date);                         // data
            
            queryStatement.execute();
            
            
        }
        catch (ParseException pex) {
            // Handle error
            System.err.println("Error on DBConnector -> DATE ERROR (sqlCreateNewArticle): " + pex);
            Log.ERROR(getClass().getName(), "sqlCreateNewArticle", "Exception", pex.getMessage());
        }
        catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector -> GENERAL (sqlCreateNewArticle): "+ ex + " -> " + ex.getMessage());
            Log.ERROR(getClass().getName(), "sqlCreateNewArticle", "Exception", ex.getMessage());
        }
    }
    
    public int sqlGetArticleId(String articleName) {
        Log.INFO(getClass().getName(), "execute sqlGetArticleId", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetArticleId;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, articleName);  // idArticle
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return Integer.parseInt(res.getString("idArticleType"));        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetArticleId", "Empty Set", "");
                return -1;
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetArticleId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetArticleId", "Exception", ex.getMessage());
        }
        
        return -1;
    }
    
    public String sqlGetArticleDecsription(String articleName) {
        Log.INFO(getClass().getName(), "execute sqlGetArticleDecsription", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetArticleId;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, articleName);  // idArticle
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return res.getString("description");        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetArticleDecsription", "Empty Set", "");
                return "";
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetArticleDecsription): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetArticleDecsription", "Exception", ex.getMessage());
        }
        
        return "";
    }
    
    public List<String> sqlGetStoreNames() {
        Log.INFO(getClass().getName(), "execute sqlGetStoreNames", "", "");
        
        
        List<String> tmp = new ArrayList<>();
        
        // mysql statemant & query
        ResultSet         res            = null;
        final String      _query         = Strings.sqlQueryGetStoreNames;
        PreparedStatement queryStatement = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                if(!tmp.contains(res.getString("name")))
                { 
                    tmp.add(res.getString("name"));
                }
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetStoreNames", "Empty Set", "");
                return (tmp = null);
            }
            
            return tmp;
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetStoreNames): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetStoreNames", "Exception", ex.getMessage());
        }
        
        return (tmp = null);
    }
    
    public List<String> sqlGetCouriers() {
        Log.INFO(getClass().getName(), "execute sqlGetCouriers", "", "");
        
        
        List<String> tmp = new ArrayList<>();
        
        // mysql statemant & query
        ResultSet         res            = null;
        final String      _query         = Strings.sqlQueryGetCouriers;
        PreparedStatement queryStatement = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                if(!tmp.contains(res.getString("description")))
                { 
                    tmp.add(res.getString("description"));
                }
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetCouriers", "Empty Set", "");
                return (tmp = null);
            }
            
            return tmp;
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetCouriers): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetCouriers", "Exception", ex.getMessage());
        }
        
        return (tmp = null);
    }
    
    public void sqlCreateNewBill(String description) {
        Log.INFO(getClass().getName(), "execute sqlCreateNewBill", "", "");
        
        
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryAddNewBill;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, description);
            
            queryStatement.execute();
            
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlCreateNewBill): " + ex);
            Log.ERROR(getClass().getName(), "sqlCreateNewBill", "Exception", ex.getMessage());
        }
    }
    
    public int sqlGetBillId(String description) {
         Log.INFO(getClass().getName(), "execute sqlGetBillId", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetBillById;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, description);  // idArticle
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return Integer.parseInt(res.getString("idBill"));        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetBillId", "Empty Set", "");
                return -1;
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetBillId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetBillId", "Exception", ex.getMessage());
        }
        
        return -1;
    }
    
     public String sqlGetShopId(String name) {
         Log.INFO(getClass().getName(), "execute sqlGetShopId", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetShopId;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, name);  // idArticle
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return res.getString("cfShop");        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetShopId", "Empty Set", "");
                return "";
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetShopId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetShopId", "Exception", ex.getMessage());
        }
        
        return "";
    }
     
    public int sqlGetCourierId(String description) {
         Log.INFO(getClass().getName(), "execute sqlGetCourierId", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetcourierId;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, description);  // idArticle
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return Integer.parseInt(res.getString("idCourier"));        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetCourierId", "Empty Set", "");
                return -1;
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetCourierId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetCourierId", "Exception", ex.getMessage());
        }
        
        return -1;
    }  
    
    public int sqlInsertToWarehouse(int idBill, String idShop, int idCourier) {
        Log.INFO(getClass().getName(), "execute sqlInsertToWarehouse", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryAddWarehouseOut;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, idBill);     // 
            queryStatement.setString(2, idShop);  // 
            queryStatement.setInt(3, idCourier);  // 
            
            queryStatement.execute();
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlInsertToWarehouse): " + ex);
            Log.ERROR(getClass().getName(), "sqlInsertToWarehouse", "Exception", ex.getMessage());
        }
        
        return -1;
    }  
    
    public int sqlGetWarehouseOutId(int idBill, String idShop, int idCourier) {
         Log.INFO(getClass().getName(), "execute sqlGetWarehouseOutId", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetAddWarehouseID;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, idBill);     // 
            queryStatement.setString(2, idShop);  // 
            queryStatement.setInt(3, idCourier);  // 
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return Integer.parseInt(res.getString("idWarehouseOut"));        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetWarehouseOutId", "Empty Set", "");
                return -1;
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetWarehouseOutId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetWarehouseOutId", "Exception", ex.getMessage());
        }
        
        return -1;
    } 
    
    public void sqlInsertOrder(int warehouseOut, String date) {
        Log.INFO(getClass().getName(), "execute sqlInsertOrder", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryInsertOrder;
        PreparedStatement queryStatement      = null;
        
        try {
            Date d = new SimpleDateFormat("dd/MM/yyyy").parse(date); 

            // Get date
            java.sql.Date _date = new java.sql.Date(d.getTime());
            
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, warehouseOut);     
            queryStatement.setDate(2, _date);     
            
            queryStatement.execute();
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlInsertOrder): " + ex);
            Log.ERROR(getClass().getName(), "sqlInsertOrder", "Exception", ex.getMessage());
        }
       
    } 
    
    public int sqlGetOrderId(int warehouse, String date) {
         Log.INFO(getClass().getName(), "execute sqlGetOrderId", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetOrderId;
        PreparedStatement queryStatement      = null;
        
        try {            
            
            Date d = new SimpleDateFormat("dd/MM/yyyy").parse(date); 

            // Get date
            java.sql.Date _date = new java.sql.Date(d.getTime());
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, warehouse);     // 
            queryStatement.setDate(2, _date);  // 
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return Integer.parseInt(res.getString("idOrder"));        
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetOrderId", "Empty Set", "");
                return -1;
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetOrderId): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetOrderId", "Exception", ex.getMessage());
        }
        
        return -1;
    } 
    
    public void sqlInsertOrderDetail(int idOrder, int idArticleType, int value, String price) {
        Log.INFO(getClass().getName(), "execute sqlInsertOrderDetail", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryInsertOrderDetail;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, idOrder);     
            queryStatement.setInt(2, idArticleType);     
            queryStatement.setInt(3, value);     
            queryStatement.setDouble(4, Double.parseDouble(price));        
            
            queryStatement.execute();
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlInsertOrderDetail): " + ex);
            Log.ERROR(getClass().getName(), "sqlInsertOrderDetail", "Exception", ex.getMessage());
        }
    }
    
    public List<ItemHistoryRow> sqlGetOrderHistoryData() {
         
        Log.INFO(getClass().getName(), "execute sqlGetOrderHistoryData", "", "");
        
        List<ItemHistoryRow> tmp = new ArrayList<>();
        
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryJoinTablesForOrderHistory;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                String id =  res.getString("idOrder");       
                String date =  res.getString("date");    
                String name =  res.getString("name");    
                String value =  res.getString("value"); 
                String price =  res.getString("price");
                ItemHistoryRow _item = new ItemHistoryRow(date, id, name, value, price);
                tmp.add(_item);
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetShopId", "Empty Set", "");
                return null;
            }  
            
            return tmp;
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetOrderHistoryData): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetOrderHistoryData", "Exception", ex.getMessage());
        }
        
        return null;
    }
    
    public List<ItemWarehouseHistoryRow> sqlGetWarehouseHistoryData() {
         
        Log.INFO(getClass().getName(), "execute sqlGetWarehouseHistoryData", "", "");
        
        List<ItemWarehouseHistoryRow> tmp = new ArrayList<>();
        
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryJoinTablesForWareHouseHistory;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                String id =  res.getString("idWarehouseOut");       
                String nameC =  res.getString("nameCourier");    
                String cfshop =  res.getString("cfShop");    
                String bill =  res.getString("descriptionBill"); 
                String courier =  res.getString("descriptionCourier");
                String price =  res.getString("price");
                String date =  res.getString("date");
                String nameA =  res.getString("nameArticle");
                                
                ItemWarehouseHistoryRow _item = new ItemWarehouseHistoryRow(
                       id, nameC, cfshop, bill,courier,price, date, nameA
                
                );
                tmp.add(_item);
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetWarehouseHistoryData", "Empty Set", "");
                return null;
            }  
            
            return tmp;
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetWarehouseHistoryData): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetWarehouseHistoryData", "Exception", ex.getMessage());
        }
        
        return null;
    }
    
    public void sqlInsertWarehouseIn(String date, String position, String idArticle) {
        Log.INFO(getClass().getName(), "execute sqlInsertWarehouseIn", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryInsertWarehouseIn;
        PreparedStatement queryStatement      = null;
        
        try {
            // This thorow a ParseException
             Date d = new SimpleDateFormat("dd/MM/yyyy").parse(date); 
            // Get date
            java.sql.Date _date = new java.sql.Date(d.getTime());
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setDate(1, _date); 
            queryStatement.setString(2, position);
            queryStatement.setInt(3, Integer.parseInt(idArticle));
            
            queryStatement.execute();
        } catch (ParseException pex) {
            // Handle error
            System.err.println("Error on DBConnector -> DATE ERROR (sqlInsertWarehouseIn): " + pex);
            Log.ERROR(getClass().getName(), "sqlInsertWarehouseIn", "Exception", pex.getMessage());
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlInsertOrderDetail): " + ex);
            Log.ERROR(getClass().getName(), "sqlInsertOrderDetail", "Exception", ex.getMessage());
        }
    }
    
    public String sqlGetWarehousePosition(int idArticle) {
         
        Log.INFO(getClass().getName(), "execute sqlGetWarehousePosition", "", "");

        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryGetWareHousPosition;
        PreparedStatement queryStatement      = null;
        
        try {
            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setInt(1, idArticle);
            
            res = queryStatement.executeQuery();
            
            int numColumns = -1;
            
            while (res.next()) {
                numColumns = res.getMetaData().getColumnCount();
                return res.getString("position");       
                
            }
            if (numColumns == -1) {
                Log.ERROR(getClass().getName(), "sqlGetWarehousePosition", "Empty Set", "");
                return "";
            }  
        } catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlGetWarehousePosition): " + ex);
            Log.ERROR(getClass().getName(), "sqlGetWarehousePosition", "Exception", ex.getMessage());
        }
        
        return "";
    }
    
     public void sqlUpdatePosition(String pos, int idArticle) {
        Log.INFO(getClass().getName(), "execute sqlUpdatePosition1", "", "");
            
        // mysql statemant & query
        ResultSet         res                 = null;
        final String      _query              = Strings.sqlQueryUpdatePosition;
        PreparedStatement queryStatement      = null;
        
        try {

            // Use parameters for prevent sql injection
            queryStatement = mysqlCon.prepareStatement(_query);
            queryStatement.setString(1, pos);
            queryStatement.setInt(2, idArticle);
            
            queryStatement.execute();
        }catch (Exception ex) {
            // Handle error
            System.err.println("Error on DBConnector (sqlUpdatePosition1): " + ex);
            Log.ERROR(getClass().getName(), "sqlUpdatePosition1", "Exception", ex.getMessage());
        }
    }
}
