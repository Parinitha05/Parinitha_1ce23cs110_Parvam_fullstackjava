package com.constructor;

class Grandparent {
	public Grandparent() {
		super();
		System.out.println("Grand Parent Constructor");
	}
}

class Person extends Grandparent{
	int person_id=20;
	public Person() {
		super();
		System.out.println("Person constructor");
	}
}

class Student extends Person{
	public int id;
	public String name;
	public Student(int id, String name) {
		this.id = id;
		this.name = name;
	}
	public Student(int id) {
		super();
		this.id = id;
	}
	
}
public class Constructorinjava {
	public static void main(String[] args) {
		Student s1= new Student(101,"mohan");
		Student s2= new Student(102);
		System.out.println("First Student:");
		System.out.println("Id: "+s1.id);
		System.out.println("Name: "+s1.name);
		System.out.println("Second Student:");
		System.out.println("Id: "+s2.id);
		System.out.println("Name: "+s2.name);
	}
}
