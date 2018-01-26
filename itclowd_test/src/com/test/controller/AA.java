package com.test.controller;

import com.google.gson.Gson;

public class AA {
	public static void main(String[] args) {
		System.out.println("Joy To Read 2-4 (Story Book + Workbook + Hybrid CD) - Aladdin\'s Magic Lamp");
		BB b = new BB();
		String a = new Gson().toJson(b);
		System.out.println(a);
		System.out.println("Joy To Read 2-4 (Story Book + Workbook + Hybrid CD) - Aladdin\'s Magic Lamp"
				.replaceAll("\'", "\u0027"));
	}
}
