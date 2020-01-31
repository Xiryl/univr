/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

/* Notice, do not import com.mysql.cj.jdbc.*
 * or you will have problems!
 */

package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class LoadDriver {
    
    public static void main(String[] args) {
        try {
            /* The newInstance() call is a work around for some
             * broken Java implementations
             */
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        } catch (Exception ex) {
            System.err.println("Mysql JDBC Driver Error: " + ex);
        }
    }
}