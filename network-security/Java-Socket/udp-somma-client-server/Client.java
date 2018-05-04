
import java.io.*;
import java.net.*;

public class Client {
    
    public static void main(String[] args) {
        // const
        final int BUFFER_DIM  = 1024;
        final int SERVER_PORT = 9876;
        
        DatagramSocket clientSocket  = null;
        byte[] receiveData           = new byte[BUFFER_DIM];
        byte[] sendData              = new byte[BUFFER_DIM];
        DatagramPacket sendPacket    = null;
        DatagramPacket receivePacket = null;
        
        try {
            // creo loggetto socket
            clientSocket = new DatagramSocket();
            
            // l'indirizzo del server sara' loopback
            InetAddress IPAddress =  InetAddress.getByName("localhost");
            
            // preparo il buffer per geggere da tastiera
            BufferedReader bufReader = new BufferedReader(
                new InputStreamReader(System.in));
            
            int userInput;
            
            // cicla finchè l'input non è diverso dal valore 0
            do {
                System.out.print("Inserisci valore da sommare [0 exit]: ");
                
                // leggo il valore inserito da tastiera
                String input = bufReader.readLine();
                
                // trasformo il valore in intero per la condizione del while
                userInput = Integer.parseInt(input.trim());
                
                // riempio il buffer dell'input inserito dall'utente
                sendData = input.getBytes();
                
                // costruisco il pacchetto da inviare
                sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, SERVER_PORT);
                clientSocket.send(sendPacket);
            } while (userInput != 0);
            
            receivePacket = new DatagramPacket(receiveData, receiveData.length);
            
            // mi metto in attesa di ricevere un pacchetto
            clientSocket.receive(receivePacket);
            
            System.out.println("Il server ha risposto con:" + new String(receivePacket.getData()));
            
            // chiudo la connessione con il server 
            clientSocket.close();
        }
        catch (Exception e) {
            System.out.println(e);
        } 
    }
}