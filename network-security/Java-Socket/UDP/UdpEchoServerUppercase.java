import java.io.*;
import java.net.*;

public class UdpEchoServerUppercase {

     public static void main(String[] args) {
         
        DatagramSocket serverSocket = null;
        DatagramPacket receivePacket;
        DatagramPacket sendPacket;
        
        try {
            serverSocket = new DatagramSocket(9876);
            System.out.println("Attesa client...");
            
            while (true) {
                try {
                    byte[] sendData    = new byte[1024];
                    byte[] receiveData = new byte[1024];
                    
                    receivePacket = new DatagramPacket(receiveData, receiveData.length);
                    
                    serverSocket.receive(receivePacket);
                    
                    String msg = new String(receivePacket.getData());
                    
                    System.out.println("Ricevuto: " + new String(receivePacket.getData()));
                    
                    InetAddress IPAddress = receivePacket.getAddress();
                    int port = receivePacket.getPort();
                    
                    sendData = msg.toUpperCase().getBytes();
                    
                    sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, port);
                    
                    serverSocket.send(sendPacket);
                    
                }
                catch (Exception e) {
                   System.out.println(e.getMessage()); 
                }
            }
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }    
    }   
}
