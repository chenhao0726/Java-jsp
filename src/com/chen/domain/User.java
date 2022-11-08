package com.chen.domain;

public class User {
	private String password;
	private String username;
	
	public User() {
	}
	
	public User(String password, String username) {
		this.password = password;
		this.username = username;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "User [password=" + password + ", username=" + username + "]";
	}
}
