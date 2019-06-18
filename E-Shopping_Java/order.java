package edu.cs.web.model;

import java.util.Date;


public class order {
	String oid;
	double amount;
	String caddr;
	String cemail;
	String cname;
	String cphone;
	Date odate;
	int onum;
	
	public order(String oid, double amount, String caddr, String cemail, String cname, String cphone, Date odate,
			int onum) {
		this.oid = oid;
		this.amount = amount;
		this.caddr = caddr;
		this.cemail = cemail;
		this.cname = cname;
		this.cphone = cphone;
		this.odate = odate;
		this.onum = onum;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getCaddr() {
		return caddr;
	}

	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}

	public String getCemail() {
		return cemail;
	}

	public void setCemail(String cemail) {
		this.cemail = cemail;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public Date getOdate() {
		return odate;
	}

	public void setOdate(Date odate) {
		this.odate = odate;
	}

	public int getOnum() {
		return onum;
	}

	public void setOnum(int onum) {
		this.onum = onum;
	}

	
}
