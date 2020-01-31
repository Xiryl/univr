/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package helper;

public class ItemWarehouseHistoryRow {
    private String IdWarehouseOut;
    private String NameCourier;
    private String CfShop;
    private String DescriptionBill;
    private String DescriptionCourier;
    private String Price;
    private String Date;
    private String NameArticle;


    public ItemWarehouseHistoryRow(String idWarehouseOut, String nameCourier, String cfShop, String descriptionBill, String descriptionCourier, String price, String date, String nameArticle) {
        this.IdWarehouseOut=idWarehouseOut;
        this.NameCourier=nameCourier;
        this.CfShop=cfShop;
        this.DescriptionBill=descriptionBill;
        this.DescriptionCourier=descriptionCourier;
        this.Price=price;
        this.Date=date;
        this.NameArticle=nameArticle;
    }

    public String getIdWarehouseOut() {
        return this.IdWarehouseOut;
    }

    public String getNameCourier() {
        return this.NameCourier;
    }

    public String getCfShop() {
        return this.CfShop;
    }

    public String getDescriptionBill() {
        return this.DescriptionBill;
    }

    public String getDescriptionCourier() {
        return this.DescriptionCourier;
    }

    public String getPrice() {
        return this.Price;
    }

    public String getDate() {
        return this.Date;
    }

    public String getNameArticle() {
        return this.NameArticle;
    }
}