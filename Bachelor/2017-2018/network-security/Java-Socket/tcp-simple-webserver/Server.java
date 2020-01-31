import java.net.*;
import com.sun.corba.se.spi.activation.ServerOperations;
import java.io.*;

public class Server {

    public static void main(String args[]) {

        // const
        final int PORT = 8080;

        // sockets & URI
        URL url                   = null;
        String indirizzo          = "https://www.chiarani.it";
        String HTTP_HEADER        = "HTTP/1.1 200 OK\nContent-Type: text/html\nServer: My Java Web Server\n\n";
        PrintWriter outWriter     = null;
        ServerSocket serverSocket = null;
        Socket clientSocket       = null;
        BufferedReader inReader   = null;

        try {
            // starting server
            System.out.println("Starting server on port " + PORT);
            serverSocket = new ServerSocket(PORT);

            System.out.println("Waiting client ...");
            clientSocket = serverSocket.accept();
            System.err.println("Client connected from: " + clientSocket);

            inReader = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());

            url = new URL(indirizzo);
            URLConnection connection = url.openConnection();
            connection.connect();
            System.out.println("OK");

            BufferedReader urlReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

            String str = null;
            String response = "";
            response += HTTP_HEADER;
            outWriter.println(HTTP_HEADER);
            outWriter.flush();

            while( (str = urlReader.readLine()) != null ) {
                outWriter.println(str);
                outWriter.flush();
            }

            System.out.println("**Done**");

            // close
            serverSocket.close();
            clientSocket.close();
            outWriter.close();
            inReader.close();
        }
        catch ( Exception ex ) {
            System.out.println(ex);
        }
    }
}