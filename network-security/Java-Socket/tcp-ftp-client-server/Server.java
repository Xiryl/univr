import java.net.*;
import java.io.*;

public class Server {

    public static void main(String args[]) {
        
        // const
        final int PORT = 9876;

        // socket and streams
        ServerSocket serverSocket = null;
        Socket clientSocket       = null;
        BufferedReader inReader   = null;
        PrintWriter outWriter     = null;
        BufferedReader fileReader = null;

        try {
            // start server
            System.out.println("Starting server on port " + PORT + " ...");
            serverSocket = new ServerSocket(PORT);

            // waiting for a connection
            System.out.println("Waiting for client ...");
            clientSocket = serverSocket.accept();
            System.out.println("Client connected from: " + clientSocket);

            // link streams to socket
            inReader  = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());

            String fileName = inReader.readLine().trim();
            System.out.println("Client request: " + fileName);

            // read file
            fileReader = new BufferedReader( new InputStreamReader(new FileInputStream(fileName)));

            String tmpLine = null;

            // send file 
            while ( (tmpLine = fileReader.readLine()) != null ) {
                outWriter.println(tmpLine);
                outWriter.flush();
            } 

            // close connection and socketr
            clientSocket.close();
            serverSocket.close();
            inReader.close();
            outWriter.close();
        }
        catch ( Exception ex ) {
            System.out.println(ex);
        }


        System.out.println("Done");
    }
}