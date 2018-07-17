/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package helper;

public class ItemHistoryRow {
    private final String Data;
    private final String IdOrdine;
    private final String NomeArticolo;
    private final String Qta;
    private final String Costo;
    
    public ItemHistoryRow(String Data, String IdOrdine, String NomeArticolo, String Qta, String Costo) {
        this.Data = Data;
        this.IdOrdine = IdOrdine;
        this.NomeArticolo = NomeArticolo;
        this.Qta = Qta;
        this.Costo = Costo;
    }
    
    public String getData() {
        return this.Data;
    }
    
    public String getIdOrdine() {
        return this.IdOrdine;
    }
    
    public String getNomeArticolo() {
        return this.NomeArticolo;
    }
    
    public String getQta() {
        return this.Qta;
    }
    
    public String getCosto() {
        return this.Costo;
    }
}
