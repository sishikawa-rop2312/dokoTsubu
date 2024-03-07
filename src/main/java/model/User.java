package model;

import java.io.Serializable;

public class User implements Serializable {
	private String name;	// ユーザ名
	private String pass;	// パスワード
	private int icon;	// アイコン
	
	public User() {}
	public User(String name, String pass, int icon) {
		this.name = name;
		this.pass = pass;
		this.icon = icon;
	}
	
	public String getName() {
		return name;
	}
	
	public String getPass() {
		return pass;
	}
	
	public int getIcon() {
		return icon;
	}
}
