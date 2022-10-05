import java .io.*;
import java.net.*;
public class server {
    public static void main(String args[]){
    try{
Socket cs= new Socket("127.0.0.1",3333);
BufferedReader br=new BufferedReader(new InputStreamReader(cs.getInputStream()));
System.out.print("messge from server:");
System.out.println(br.readLine());
br.close();
cs.close();
}catch(Exception e){
System.out.println(e);
}}
}
