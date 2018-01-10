package com.iot.test;

import javax.servlet.http.Cookie;

public class Exam {

	public static void main(String[] args) {
		Cookie[] cookies = new Cookie[3];
		cookies[0] = new Cookie("JSESSION","adfsafdsafdafds");
		cookies[1] = new Cookie("userId","red");
		cookies[2] = new Cookie("saveId","true");
		
		for(Cookie c : cookies) {
			if(c.getName().equals("userId")) {
				System.out.println(c.getValue());
			}
		}
	}
}
