package urlopening;

// import library for URL
import java.io.*;
import java.net.*;

public class URLOpening {

    public static void main(String[] args) {
        
        final String ADDRESS = "http://www.di.univr.it";
        
        // build URL object
        URL url = null;
        
        try {
            url = new URL(ADDRESS);
        }
        catch (MalformedURLException urlEx) {
            System.out.println("Eccezzione durante la creazione dell'URL: " + urlEx.getMessage());
            return;
        }
        
        System.out.println("URL aperto con: " + url);
        
        // prepare connection
        URLConnection connection = null;
        DataInputStream dataStream = null;
        
        try {
            System.out.println("Connessione in corso ...");
            
            // open connection with URL (HTTP/s protocol)
            connection = url.openConnection();
            connection.connect();
            System.out.println("Connessione stabilita ...");
            
            // build buffer reader from connection stream
            BufferedReader bufReader = new BufferedReader(
                new InputStreamReader(connection.getInputStream()));
            
            System.out.println("Leggo i dati ...");
            
            String strLine;
            while( (strLine = bufReader.readLine()) != null ) {
                System.out.println(strLine);
            }
            
            // close buffer
            bufReader.close();
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        System.out.println("End.");
    }
    
}
