package corejava;
import java.util.*;
public class Tcs {

	public static void main(String[] args) {
		
     Scanner s=new Scanner(System.in);
     int v1,v2,r1,r2;
     v1=s.nextInt();
     r1=s.nextInt();
     v2=s.nextInt();
     r2=s.nextInt();
     int n=s.nextInt();
        if(r2>r1)
        {
    	double x1=r1*Math.cos(Math.toRadians(v1*n));
    	double y1=r1*Math.sin(Math.toRadians(v1*n));
    	double x2=r2*Math.cos(Math.toRadians(v2*n));
    	double y2=r2*Math.sin(Math.toRadians(v2*n));
    	double dis=Math.sqrt((Math.pow(x2-x1, 2)+Math.pow(y2-y1, 2)));
    	System.out.printf("%.2f",dis);
        }
    }

}
