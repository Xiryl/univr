import java.net.*;
import java.io.*;

public class Client {

    public static void main(String[] args) {

        // const
        final int PORT    = 9876;
        final String HOST = "localhost";

        // socket and streams
        Socket clientSocket     = null;
        BufferedReader inReader = null;
        PrintWriter outWriter   = null;

        if(!hasParameter(args)){
            System.out.println("Error: You need to specify a path as parameter");
            System.exit(-1);
        }
            
        try {
            System.out.println("Trying to connect to " + HOST + ":" + PORT);
            // connection
            clientSocket = new Socket(HOST, PORT);
            System.out.println("Socket created with " + clientSocket);
            
            inReader  = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());
        }
        catch (IOException ioException) {
            System.out.println(ioException);
        }
        catch (Exception ex) {
            System.out.println(ex);
        }

        System.out.println("GET " + args[0]);
        outWriter.println(args[0]);
        outWriter.flush();

        System.out.println("Waiting for reply ...");
        String line = null;

        try {
            // read all server response line by line
            System.out.println("------ Server Reply ------\n");

            while( (line = inReader.readLine()) != null) {
                System.out.println(line);
            }

            System.out.println("\n------ End Server Reply ------\n");

            // close connection & stream
            clientSocket.close();
            inReader.close();
            outWriter.close();
        }
        catch (IOException ioException) {
            System.out.println(ioException);
        }
        catch (Exception ex) {
            System.out.println(ex);
        } 

        System.out.println("Done.");
    }

    // check if program has a parameter
    private static boolean hasParameter(String args[]) {
        if(args.length == 0 )
            return false;
        else
            return true;
    }
}