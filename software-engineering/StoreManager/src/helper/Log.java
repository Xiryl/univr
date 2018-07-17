/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package helper;

public class Log {
    
    public Log() {
    }
    
    public static boolean INFO(String caller, String action, String description, String moreData) {
        try {
            System.out.println(String.format("[INFO] [%s]-[%s] %s : %s : %s", new java.util.Date(), caller, action, description, moreData));
            return true;
        } catch (Exception ex) {
            System.err.println("Logger.Info error: "+ex);
            return false;
        }
    }
    
    public static boolean ERROR(String caller, String action, String description, String moreData) {
        try {
            System.out.println(String.format("[ERROR] [%s]-[%s] %s : %s : %s", new java.util.Date(), caller, action, description, moreData));
            return true;
        } catch (Exception ex) {
            System.err.println("Logger.Info error: "+ex);
            return false;
        }
    }    
}
