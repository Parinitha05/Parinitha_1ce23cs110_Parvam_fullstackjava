package com.abstraction;
abstract class shape{
	abstract void draw();
	public void display() {
		System.out.println("display method");
	}
}
class Circle extends shape{

	@Override
	void draw() {
		System.out.println("Drawing method");
		
	}
	
}
public class Abstraction {

	public static void main(String[] args) {
		Circle c1=new Circle();
		c1.draw();
		c1.display();

	}

}
