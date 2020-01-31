import java.io.*;
import java.net.*;

class Server {

    public static void main(String args[]) {
        
        ServerSocket server = null;
        Socket clientSocket = null;
        BufferedReader reader = null;
        PrintWriter outWriter = null;

        try {
            System.out.println("Creazione server socket");
            server = new ServerSocket(9876);
            System.out.println("Attesa connessione...");
            clientSocket = server.accept();
            System.out.println("Connesso da " + clientSocket);

            reader = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            outWriter = new PrintWriter(clientSocket.getOutputStream());

            while (true) {
                String text = new String(reader.readLine());
                System.out.println(text);
                outWriter.println(text.toUpperCase());
                outWriter.flush();

                if (text.equals("stop")) {
                    break;
                }
            }

            reader.close();
            outWriter.close();
            clientSocket.close();
            server.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
}
