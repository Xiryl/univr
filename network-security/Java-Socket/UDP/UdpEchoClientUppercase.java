import java.io.*;
import java.net.*;

public class UdpEchoClientUppercase {

     public static void main(String[] args) {
        
        DatagramSocket clientSocket = null;
        byte[] sendData    = new byte[1024];
        byte[] receiveData = new byte[1024];
        
        try {
            // build socket
            clientSocket = new DatagramSocket();
            DatagramPacket receivePacket;
            DatagramPacket sendPacket;
            
            // build buffer from user input
            BufferedReader bufInFromUser = new BufferedReader(
                new BufferedReader(new InputStreamReader(System.in)));
            
            // set IP dest. as localhost (loopback)
            InetAddress IPAddress = InetAddress.getByName("localhost");
            
            System.out.print("Inserisci il messaggio per il server: ");
            
            String message = bufInFromUser.readLine();
            sendData = message.getBytes();
            sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, 9876);
            
            clientSocket.send(sendPacket);
            
            receivePacket = new DatagramPacket(receiveData, receiveData.length, IPAddress, 9876);
            clientSocket.receive(receivePacket);
            
            System.out.println("FROM SERVER:" + new String(receivePacket.getData()));
            
            clientSocket.close();            
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }    
    }   
}
