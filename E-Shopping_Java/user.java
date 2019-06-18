package edu.cs.web.model;

public class user {
String email;
String pass;

public user(String email, String pass) {
	this.email = email;
	this.pass = pass;
}
public user() {

}
public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}


}
