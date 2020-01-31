import java.io.*;
import java.net.*;

public class Client {
    public static void main(String args[]) {

        // const
        final int PORT    = 9876;
        final String HOST = "localhost";

        // connection obj
        Socket clientSocket     = null;
        BufferedReader inReader = null;
        PrintWriter outWriter   = null;



        try {
            // create input buffer from keyboard
            BufferedReader keyUserIn = new BufferedReader(new InputStreamReader(System.in)); 

            // connect to host
            clientSocket = new Socket("localhost", PORT);
            System.out.println(String.format("Socket creata con: %s", clientSocket));

            // connect buffers to socket streams
            inReader  = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());

            int val;

            // escape w/0
            do {
                System.out.println("Inserisci il valore da sommare: ");
                String userInput = keyUserIn.readLine();

                // force send data throught socket
                outWriter.println(userInput);
                outWriter.flush();

                val = Integer.parseInt(userInput.trim());
            } while (val != 0);

            System.out.println("Attendo una risposta ...");

            String line = new String(inReader.readLine());
            System.out.println(String.format("Il server risponde con: %s", line));

            // close streams and socket
            clientSocket.close();
            inReader.close();
            outWriter.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
}