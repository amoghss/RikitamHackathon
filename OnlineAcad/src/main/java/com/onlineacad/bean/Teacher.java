package com.onlineacad.bean;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Teacher{

	private String uname;
	private String fname;
	private String lname;
	private int phnum;
	private String email;
	private String qualification;
	private String password; 
}
