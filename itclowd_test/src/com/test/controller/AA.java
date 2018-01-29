package com.test.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.OutputStreamWriter;

public class AA {
	public static void main(String[] args) throws Exception {
		FileReader fr = new FileReader("C:\\Temp\\css1.txt");
		
		int readChar;
		char[] cbuff = new char[100];
		StringBuilder sb = new StringBuilder();
		while((readChar = fr.read(cbuff)) != -1){
			String data = new String(cbuff, 0, readChar);
			sb.append(data);
		}
//		System.out.println(sb);
		String data = sb.toString();
//		System.out.println(data);
		File file = new File("c:/temp/css1.txt");
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("c:/temp/css1.css"), "UTF-8"));
		bw.write(data.replaceAll("}", "}\r\n"));
		bw.flush();
		bw.close();
//		FileWriter fw = new FileWriter(file, true);
//		fw.write(data.replaceAll("}", "}\r\n"));
//		fw.flush();
		fr.close();
	}
}
