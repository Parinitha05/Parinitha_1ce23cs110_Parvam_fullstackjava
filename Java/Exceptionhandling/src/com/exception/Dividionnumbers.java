package com.exception;

import java.util.Scanner;

public class Dividionnumbers {
	public static void main(String[] args) {
		System.out.println("Start Program");
		Scanner sc= new Scanner(System.in);
		System.out.println("Enter two numbers :");
		int num1,num2;
		num1=sc.nextInt();
		num2=sc.nextInt();
		int res=0;
		try {
			res=num1/num2;
		} catch (ArithmeticException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("Result: "+res);
		System.out.println("End Program");
	}
}
