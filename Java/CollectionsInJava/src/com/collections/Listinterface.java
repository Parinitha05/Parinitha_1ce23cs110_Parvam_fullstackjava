package com.collections;

import java.util.ArrayList;
import java.util.List;

public class Listinterface {
	public static void main(String[] args) {
		List list= new ArrayList();
		list.add(12);
		list.add(12.0);
		list.add("hello");
		list.add(true);
		list.add(12);
		list.add(12);
		System.out.println(list);
		
		//with genetics
		System.out.println("*******************");
		List<Integer> integers= new ArrayList<Integer>();
		integers.add(120);
		integers.add(130);
		System.out.println(integers);
		
		Integer integer = integers.get(1);
		System.out.println(integer);
	}
}

// we can store different data types
// list is dynamic in nature
