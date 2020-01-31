import java.net.*;
import java.io.*;

public class Server {
    public static void main(String args[]) {

        //const
        final int PORT = 9876;

        // socket
        Socket clientSocket       = null;
        ServerSocket serverSocket = null;
        BufferedReader inReader   = null;
        PrintWriter outWriter     = null;


        try {
            // keyboard buffer input
            BufferedReader keyUserInput = new BufferedReader(new InputStreamReader(System.in)); 

            System.out.println("Creo il server ....");
            serverSocket = new ServerSocket(PORT);

            // wait connection from client
            System.out.println("Attendo il client ...");
            clientSocket = serverSocket.accept();
            System.out.println("Ricevuta connessione da: " + clientSocket);

            // link buffer and streams to client socket
            inReader  = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());

            int value;
            int sum = 0;

            // esape w/0
            do {
                String line = new String(inReader.readLine());
                value = Integer.parseInt(line.trim());
                sum += value;
                System.out.println("Somma: " + sum + "Valore: " + value);
            } while ( value != 0);

            outWriter.println("Somma:" + sum);
            outWriter.flush();

            outWriter.close();
            inReader.close();
            clientSocket.close();
            serverSocket.close();


        }
        catch (Exception e) {
            System.out.println(e);
        }

        System.out.println("Done");
    }
}