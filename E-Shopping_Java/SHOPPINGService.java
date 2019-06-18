package edu.cs.web.service;


import java.io.IOException;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.cs.web.model.order;
import edu.cs.web.model.order_detail;
import edu.cs.web.model.product;
import edu.cs.web.model.user;

@Service
public class SHOPPINGService {

	
	@Autowired
	JdbcTemplate db;
	
    user main;
    
    public SHOPPINGService() {
    	
    }
	
	public List<Map<String, Object>> GetProducts() 
	{
		return db.queryForList("SELECT Code,Create_Date,Name,Price FROM products");
	}
	
	public List<Map<String, Object>> GetProductsByName(String name) 
	{
		return db.queryForList("SELECT Code,Create_Date,Name,Price FROM products WHERE Name LIKE '%"+name+"%' ");
	}
	
	public List<Map<String, Object>> GetSelectedProductByCode(String code) 
	{
		return db.queryForList("SELECT Code,Create_Date,Name,Price FROM products WHERE Code='"+code+"'");
	}
	
	public Blob getPhotoByCode(String code) 
	{

		String query = "select Image from products where Code=?";

		Blob photo = db.queryForObject(query, new Object[] { code }, Blob.class);

		return photo;
	}
	
	public int insertRecords(String Code,String Name,Date create_date, double price, MultipartFile photo) throws IOException 
	{

		byte[] photoBytes = photo.getBytes();
		
		product p=new product(Code,create_date,photoBytes,Name,price);
		String sql = "INSERT INTO products(Code,Create_Date,Image,Name,Price) VALUES (?,?,?,?,?)";

		return db.update(sql, new Object[] {p.getCode(),p.getCreate_date(),photoBytes,p.getName(),p.getPrice()});
	}
	
	public void addOrder
	(
			String oid,double amount,
			String caddr,String cemail,
			String cname,String cphone,
			Date odate,int onum
	)
	{
		 Timestamp timestamp = new Timestamp(odate.getTime());
		order or=new order(oid, amount, caddr, cemail, cname, cphone, timestamp, onum);
		String sql="INSERT INTO orders(ID,Amount,Customer_Address,Customer_Email,Customer_Name,Customer_Phone,Order_Date,Order_Num) VALUES ('"+or.getOid()+"',"+or.getAmount()+",'"+or.getCaddr()+"','"+or.getCemail()+"','"+or.getCname()+"','"+or.getCphone()+"','"+or.getOdate()+"',"+or.getOnum()+")";	
		db.update(sql);
	}
	
	public List<Map<String, Object>> GetProductsID() 
	{
		return db.queryForList("SELECT Code FROM products");
	}
	
	public String GetProductName(String code)
	{
		String query = "select Name from products where Code=?";
		String name = db.queryForObject(query, new Object[] { code }, String.class);
		return name; 
	}
	public user validateUser(user us) 
	{
		try {
			String sql="SELECT * FROM users WHERE customer_email='"+us.getEmail()+"' AND customer_pass='"+us.getPass()+"'";
			user user = db.queryForObject(sql, new BeanPropertyRowMapper<user>(user.class)); //user ke class ka object banao
			if(null!=user)  //user mil gaya
			{
				main=user;
			}
			else if(user==null) //user nahi mila
			{
				main=null;
		    }
		  }
		catch (Exception e) 
		{
			
		}
		return main; //user return 
		}
 
	public int RegisterUser(user us) 
	{
		String sql="INSERT INTO users VALUES('"+us.getEmail()+"','"+us.getPass()+"')";
		return db.update(sql);
	}
	
	public String getOrderID(String em) 
	{
		String m;
		String sql="SELECT ID FROM orders WHERE Customer_Email='"+em+"'";
		String oid = db.queryForObject(sql,String.class);
		if(oid==null) 
		{
			m=null;
		}else 
		{
			m=oid;
		}
		return m;
	}
	public boolean checkOrderID(String em) {
		String sql="SELECT count(*) FROM orders WHERE Customer_Email='"+em+"'";
		boolean result=false;
		int count=db.queryForObject(sql,Integer.class);
		 if (count > 0) {
		      result = true;
		    }
		return result;
	}
	
	public List<Map<String, Object>> GetOrderDetails(String oid) 
	{
		return db.queryForList("SELECT ID,Amount,Price,Quanity,ORDER_ID,PRODUCT_ID,Quanity*Price AS Expanded_Price FROM order_details WHERE ORDER_ID='"+oid+"'");
	}
	
	public int AddOrder_Details(order_detail od) 
	{
		String sql="INSERT INTO order_details VALUES('"+od.getOrder_detail_id()+"',"+od.getAmount()+","+od.getPrice()+","+od.getQuantity()+",'"+od.getOrder_id()+"','"+od.getProduct_id()+"')";	
		return db.update(sql);
	}
	public int RemoveOrder_Details(String odid) 
	{
		String sql="DELETE FROM order_details WHERE ID='"+odid+"'";
		return db.update(sql);
	}
	public String GetTotalBill(String oid) 
	{
		return db.queryForObject("SELECT FORMAT(SUM(Quanity*Price),2) Total FROM order_details WHERE ORDER_ID='"+oid+"'",String.class);
	}
	public int getCountOrders() 
	{
		String sql="SELECT COUNT(*) FROM orders;";
		return db.queryForObject(sql, int.class);
	}
	public int getCountProducts() 
	{
		String sql="SELECT COUNT(*) FROM products;";
		return db.queryForObject(sql, int.class);
	}
	public int getCountOrder_details() 
	{
		String sql="SELECT COUNT(*) FROM order_details;";
		return db.queryForObject(sql, int.class);
	}
	public double getAmount(String email) 
	{
		String sql="SELECT Amount FROM Orders WHERE Customer_Email='"+email+"'";
		double am=db.queryForObject(sql, double.class);
		return am;
	}
	public List<Map<String, Object>> GetEmlorders(String Oid) 
	{
		String sql="SELECT Customer_Address,Customer_Email,Customer_Name,Customer_Phone From  orders WHERE ID='"+Oid+"'";
		return db.queryForList(sql);
	}
	public void updateAmount(double am,String em) {
		String sql="UPDATE orders SET Amount="+am+" WHERE Customer_Email='"+em+"'";
		db.update(sql);
	}
	public double getPrice(String odid) {
		String sql="SELECT Price FROM order_details WHERE ID='"+odid+"'";
		double price=db.queryForObject(sql, double.class);
		return price;
	}
	public double getQuantity(String odid) {
		String sql="SELECT Quanity FROM order_details WHERE ID='"+odid+"'";
		double quan=db.queryForObject(sql, double.class);
		return quan;
	}
	
}
