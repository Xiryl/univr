
import java.net.*;
import java.io.*;

public class Server {
    
    public static void main(String[] args) {
        //const
        final int BUFFER_DIM = 1024;
        final int SERVER_PORT = 9876;
        
        DatagramSocket serverSocket  = null;
        byte[] sendData              = new byte[BUFFER_DIM];
        DatagramPacket sendPacket    = null;
        DatagramPacket receivePacket = null;
        
        try {
            System.out.println("In attesa del client...");
            
            // creo l'oggetto socket
            serverSocket = new DatagramSocket(SERVER_PORT);
            
            int userInput;
            int sum = 0;
            
            // attendo i numeri da sommare. Exit val: 0
            do {
                byte[] receiveData  = new byte[BUFFER_DIM];
                                
                receivePacket = new DatagramPacket(receiveData, receiveData.length);
                
                // attendo il pacchetto
                serverSocket.receive(receivePacket);
                
                String dato = new String(receivePacket.getData()).trim();
                System.out.println("Dato ricevuto:" + dato);

                // aggiorno i valori di somma
                userInput = Integer.parseInt(dato);
                sum += userInput;               
            } while(userInput != 0);

            System.out.println("Invio il dato al Client.. La somma e': " + sum);
            sendData = Integer.toString(sum).getBytes();
            sendPacket = new DatagramPacket(sendData, sendData.length, receivePacket.getAddress(), receivePacket.getPort());
            
            // invio il risultato al client
            serverSocket.send(sendPacket);
            serverSocket.close();
        }
        catch (Exception e) {
            System.out.println("errore: " + e);
        }
        
        System.out.println("Done");
    }
    
}
