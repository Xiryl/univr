/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package helper;

public class Strings {
    public static final String sqlQueryAuthUser                      = "SELECT * FROM USER WHERE USER.name = ? AND USER.pwd = AES_ENCRYPT(?,?)";
    public static final String sqlQuerySelectAllSport                = "SELECT * FROM SPORT";
    public static final String sqlQueryGetSportId                    = "SELECT idSport FROM SPORT WHERE description = ?";
    public static final String sqlQyerySelectAllArticleTypes         = "SELECT * FROM ARTICLE_TYPE";
    public static final String sqlQueryInsertNewArticleType          = "INSERT INTO ARTICLE_TYPE VALUES(null, ?,?,?,?)";
    public static final String sqlQueryInsertNewArticle              = "INSERT INTO ARTICLE VALUES(null, ?,?,?)";
    public static final String sqlQueryGetArticleId                  = "SELECT * FROM ARTICLE_TYPE WHERE name = ?";
    public static final String sqlQueryGetArticleDesrciption         = "SELECT * FROM ARTICLE_TYPE WHERE name = ?";
    public static final String sqlQueryGetStoreNames                 = "SELECT * FROM SHOP";
    public static final String sqlQueryGetCouriers                   = "SELECT * FROM COURIER";
    public static final String sqlQueryAddNewBill                    = "INSERT INTO BILL VALUES (null, ?)";
    public static final String sqlQueryGetBillById                   = "SELECT * FROM BILL WHERE description = ?";
    public static final String sqlQueryGetShopId                     = "SELECT * FROM SHOP WHERE name = ?";
    public static final String sqlQueryGetcourierId                  = "SELECT * FROM COURIER WHERE description = ?";
    public static final String sqlQueryAddWarehouseOut               = "INSERT INTO WAREHOUSE_OUT VALUES (null, ?,?,?) ";
    public static final String sqlQueryGetAddWarehouseID             = "SELECT * FROM WAREHOUSE_OUT WHERE idBill = ? AND cfShop = ? AND idCourier = ?";
    public static final String sqlQueryInsertOrder                   = "INSERT INTO ORDERS VALUES (null, ?,?)";
    public static final String sqlQueryGetOrderId                    = "SELECT * FROM ORDERS WHERE idWarehouseOut = ? AND date = ?";
    public static final String sqlQueryInsertOrderDetail             = "INSERT INTO ORDER_DETAIL VALUES (null, ?,?,?,?)";
    public static final String sqlQueryJoinTablesForOrderHistory     = "SELECT ORDER_DETAIL.idOrder, ORDERS.date, ARTICLE_TYPE.name, ORDER_DETAIL.value, ORDER_DETAIL.price FROM ORDER_DETAIL JOIN ARTICLE_TYPE ON ORDER_DETAIL.idArticleType=ARTICLE_TYPE.idArticleType JOIN ORDERS ON ORDER_DETAIL.idOrder = ORDERS.idOrder";
    public static final String sqlQueryJoinTablesForWareHouseHistory = "SELECT WAREHOUSE_OUT.idWarehouseOut, SHOP.name AS nameCourier, SHOP.cfShop, BILL.description AS descriptionBill, COURIER.description AS descriptionCourier, ORDER_DETAIL.price, ORDERS.date, ARTICLE_TYPE.name AS nameArticle FROM WAREHOUSE_OUT JOIN SHOP ON WAREHOUSE_OUT.cfShop=SHOP.cfShop JOIN BILL ON WAREHOUSE_OUT.idBill=BILL.idBill JOIN COURIER ON WAREHOUSE_OUT.idCourier=COURIER.idCourier JOIN ORDERS ON ORDERS.idWarehouseOut=WAREHOUSE_OUT.idWarehouseOut JOIN ORDER_DETAIL ON  ORDERS.idOrder=ORDER_DETAIL.idOrder JOIN ARTICLE_TYPE ON ARTICLE_TYPE.idArticleType=ORDER_DETAIL.idArticleType";
    public static final String sqlQueryInsertWarehouseIn             = "INSERT INTO WAREHOUSE_IN VALUES (null, ?,?,?) ";
    public static final String sqlQueryGetWareHousPosition           = "SELECT WAREHOUSE_IN.position FROM WAREHOUSE_IN WHERE WAREHOUSE_IN.idArticleType = ?";
    public static final String sqlQueryUpdatePosition                = "UPDATE WAREHOUSE_IN SET WAREHOUSE_IN.position  = ? WHERE WAREHOUSE_IN.idArticleType = ?";
}

