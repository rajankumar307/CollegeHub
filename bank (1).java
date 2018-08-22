package corejava;
import java.util.*;
public class Test {
	public static void main(String[] args){
    Scanner s=new Scanner(System.in);
	int tenure,na,nb,peroid,i;
	long principle;
	float rate;
	double sum1=0,sum2=0,EMI;
	principle=s.nextLong();
	tenure=s.nextInt();
	na=s.nextInt();
	int ar1[]=new int[2*na];
	float ar2[]=new float[2*na];
	for(i=0;i<na;i++)
	{
		ar1[i]=s.nextInt();
		ar2[i]=s.nextFloat();
		
	}
	for(i=0;i<na;i++)
	{
		EMI = principle * ar2[i]/( 1 - 1 / Math.pow((1 + ar2[i]),(ar1[i] * 1200)));
				sum1=sum1+EMI;
	}
	nb=s.nextInt();
	for(i=0;i<nb;i++)
	{
		ar1[i]=s.nextInt();
		ar2[i]=s.nextFloat();
		
	}
	for(i=0;i<nb;i++)
	{
		EMI = principle * ar2[i] /( 1 - 1 / Math.pow((1 + ar2[i]),(ar1[i] * 12)));
				sum2=sum2+EMI;
	}
	if(sum1>sum2)
		System.out.println("Bank B");
	else
		System.out.println("Bank A");
	}
	
}
