/**
 * @author Fabio Chiarani
 * @author Luigi Capogrosso
 */

package model;

import helper.Log;
import java.util.Properties;
import java.io.FileInputStream;

public class ProprietiesLoader {
    
    private Properties dbProprieties = null;
    private static final String proprietiesFilePath = "./src/helper/config.proprieties";

    public ProprietiesLoader() {
        dbProprieties = new Properties();
        try {  
            // Load config.prorpieties file
            Log.INFO(getClass().getName(), "Load Proprieties file..", "", "");
            dbProprieties.load(new FileInputStream(proprietiesFilePath));    
        } catch (Exception ex) {
            System.err.println("Proprieties Loader Error (getDatabaseProprieties): " + ex);
        }
    }
    
    public String getDatabaseUser() {
       return dbProprieties.getProperty("dbUser");
    }
    
    public String getDatabasePassword() {
        return dbProprieties.getProperty("dbPassword");
    }
    
    public String getDatabaseHost() {
        return dbProprieties.getProperty("dbHost");
    }
    
    public String getDatabasePort() {
        return dbProprieties.getProperty("dbPort");
    }
    
    public String getMySqlAESToken() 
    {
       return dbProprieties.getProperty("AESKey");
    }
}
