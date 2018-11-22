import java.io.*;
import java.net.*;

public class Client {

    public static void main(String args[]) {

        // const
        final int PORT = 9876;

        // client TCP socket
        Socket clientSocket = null;

        // stream in & out
        BufferedReader inReader = null;
        PrintWriter outWriter = null;

        try {
            // mi connetto al server
            clientSocket = new Socket("localhost", PORT);
            System.out.println("Socket creata: " + clientSocket);
            
            // apro le socket
            inReader = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());

            BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
            
            while(true) {
                String line = null;
                System.out.println("Inserisci il tasto da inviare: ");
                line = inFromUser.readLine();

                // invio il messaggio
                outWriter.println(line);
                outWriter.flush();

                // ricezione risposta dal server
                line = inReader.readLine();
                System.out.println("Ricevuto: " + line);
                if (line.equals("STOP"))
                    break;
            }

            // chiusura streams
            clientSocket.close();
            outWriter.close();
            inReader.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }

        System.out.println("Done.");
    }
}