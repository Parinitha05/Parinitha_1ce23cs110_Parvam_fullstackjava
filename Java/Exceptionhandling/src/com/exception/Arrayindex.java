package com.exception;
import java.util.Arrays;
import java.util.Scanner;

public class Arrayindex {
	public static void main(String[] args) {
		System.out.println("Program Start");
		Scanner sc= new Scanner(System.in);
		System.out.println("Enter the array");
		int[] arr=new int[5];
		for(int i=0;i<5;i++) {
			arr[i]=sc.nextInt();
		}
		System.out.println("Array: "+ Arrays.toString(arr));
		try {
			System.out.println("5th inex: "+arr[5]);
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println(e.getMessage());
		}
		sc.close();
		
		System.out.println("Program ended");
	}
}
