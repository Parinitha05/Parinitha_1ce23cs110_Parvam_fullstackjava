package com.abstraction;

class Car implements Vehicle{

	@Override
	public void start() {
		System.out.println("Car class start method");
		
	}

	@Override
	public void stop() {
		System.out.println("Car class stop method");
	}
	
}
public class Abstractioninterface {
	public static void main(String[] args) {
		Car c1=new Car();
		c1.start();
		c1.stop();
		Vehicle.display();
	}
}
