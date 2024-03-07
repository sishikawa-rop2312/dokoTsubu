package model;

import java.io.Serializable;

public class Mutter implements Serializable {
	private String userName;	// ユーザ名
	private String text;	// つぶやき内容
	private int icon;	// アイコン
	
	public Mutter() {}
	public Mutter(String userName, String text, int icon) {
		this.userName = userName;
		this.text = text;
		this.icon = icon;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getText() {
		return text;
	}
	
	public int getIcon() {
		return icon;
	}
}
