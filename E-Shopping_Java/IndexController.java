package edu.cs.web.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import edu.cs.web.model.order_detail;
import edu.cs.web.model.user;
import edu.cs.web.service.SHOPPINGService;

@Controller
public class IndexController {
	ModelAndView place=null;
	@Autowired
	SHOPPINGService ls;
	String GoTo;
	String take;
	String next;
	String move;
	
	@GetMapping("/")
	public String home(HttpSession session) 
	{
	session.removeAttribute("cust_email"); 
	session.removeAttribute("admin");
	return "index";
	}
	
	@GetMapping("/home")
	public String home2(Model map) 
	{
	map.addAttribute("listProd",ls.GetProducts());
	return "index";
	}
	
	@RequestMapping(value = "/viewProducts",method=RequestMethod.GET)
	public String viewProduct(Model map) 
	{
	map.addAttribute("listProd",ls.GetProducts());
	map.addAttribute("totalProd",ls.getCountProducts());
	return "viewProducts";
	}
	
	@RequestMapping(value = "/addProduct",method=RequestMethod.GET)
	public String ProductPage(){
		return "AddProductPage";
	}
	@RequestMapping(value = "/SaveProduct",method = RequestMethod.POST)
	public ModelAndView SaveProduct(@RequestParam("date") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date c_date,
			@RequestParam("photo") MultipartFile photo, @RequestParam("name") String Name,@RequestParam("cath") String cath,@RequestParam("price") double price, ModelMap m){
		try {
			int id=ls.getCountProducts()+1;
			String code="PD0"+id;
			String pname=Name+' '+cath;
			ls.insertRecords(code, pname, c_date, price, photo);
		}catch (Exception e) {

		}
		return new ModelAndView("AddProductPage","msg","Product Inserted !");
	}
	@RequestMapping(value = "/getProductPhoto/{code}")
	public void getStudentPhoto(HttpServletResponse response, @PathVariable("code") String code) throws Exception {
		response.setContentType("image/jpeg");

		Blob ph = ls.getPhotoByCode(code);

		byte[] bytes = ph.getBytes(1, (int) ph.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
	
	@RequestMapping(value = "/CreateOrder")
	public String viewDetails(HttpSession session)
	{
		String email=(String)session.getAttribute("cust_email"); //session store kardo
		if(email!=null) 
		{
			take="ConfirmOrder";
		}
		else if(email==null)
		{
			take="login";
		}
	return take;
	}
	@RequestMapping(value="/order")
	public String order(
			@RequestParam("amount") String am,
			@RequestParam("caddr") String addr,
			@RequestParam("cemail") String email,
			@RequestParam("cname") String name,
			@RequestParam("cphone") String phone,
			@DateTimeFormat(iso = DateTimeFormat.ISO.DATE) @RequestParam("odate")  Date date
			) {
			try {
				double oamount=Double.parseDouble(am);
				int onum=ls.getCountOrders()+1;
				int id=ls.getCountOrders()+1;
				String o_id="O0"+id;
			ls.addOrder(o_id, oamount, addr, email, name, phone, date, onum);
			}catch (DataAccessException dae) {
				System.err.println(dae);
			}
			take="index";
		return take;
	}
	@RequestMapping(value="/prodbuy")
	public String prodBuy(
			@RequestParam("code") String code,
			@RequestParam("price") String price,
			@RequestParam("quantity") String quant,
			@RequestParam("name") String name,
			ModelMap map,
			HttpSession session
			)
	{
		String eml=(String)session.getAttribute("cust_email");
		if(null!=eml) 
		{
			if(!ls.checkOrderID(eml))
			{
		  move="ConfirmOrder";
			}else if(ls.checkOrderID(eml)){
				map.addAttribute("pcode", code);
				map.addAttribute("pquant", quant);
				map.addAttribute("pprice", price);
				map.addAttribute("pname", name);
				map.addAttribute("oid", ls.getOrderID(eml));
				map.addAttribute("amount", ls.getAmount(eml));
				move="ConfirmOrder2";
			}
		}else {
			move="login";
		}
		return move;
	}
	
	@RequestMapping(value = "/viewProductByName")
	public String viewProductByName(@RequestParam("cath") String name,Model map) 
	{
	map.addAttribute("listProd",ls.GetProductsByName(name));
	map.addAttribute("totalProd",ls.getCountProducts());
	return "viewProducts";
	}
	@RequestMapping(value = "/viewByName")
	public String ByName(@RequestParam("search") String name,Model map) 
	{
	map.addAttribute("listProd",ls.GetProductsByName(name));
	map.addAttribute("totalProd",ls.getCountProducts());
	return "viewProducts";
	}
	@RequestMapping(value = "/Register")
	public String RegisterPage()
	{
	return "RegisterPage";
	}
	@RequestMapping(value = "/login")
	public String LoginPage()
	{
	return "login";
	}
	@RequestMapping(value = "/checklogin")
	public ModelAndView LoginVerify(
			@RequestParam("email") String em,
			@RequestParam("pass") String pass,
			ModelMap map,HttpSession session)
	{
		try {
			if(em.equals("admin@gmail.com") && pass.equals("admin123")) 
			{
				session.setAttribute("admin", em);
				place=new ModelAndView("index");
				
			}else if(em!="admin@gmail.com" && pass!="admin123") 
			{
				user u=new user(em,pass);
			user us=ls.validateUser(u);
			if(null !=us) //user mil chuka hai
			{ 
				session.setAttribute("cust_email", u.getEmail());
				place=new ModelAndView("showCart","am",ls.getAmount(u.getEmail()));
			}
			else if(us==null)//user nahi mila
			{ 				
				place=new ModelAndView("login","msg","Wrong Details !");
			}
		}
			}
		catch (Exception e) {
			
		}
	return place;
	}
	@RequestMapping(value = "/saveUser")
	public String registerUser(@RequestParam("cemail") String cem,@RequestParam("cpass") String cps,Model map) {
		try {
			user us =new user(cem, cps);
			ls.RegisterUser(us);
			map.addAttribute("msg", "Registered Successfully !");
		}catch (Exception e) {
			
		}
		return "RegisterPage";
	}
	@RequestMapping(value = "/viewCart")
	public String viewCart(HttpSession session,ModelMap map) 
	{
		String m;
		String email=(String)session.getAttribute("cust_email"); //session store kardo
		if(null!=email) {
		map.addAttribute("am",ls.getAmount(email));
		m="showCart";
		}else {
			m="showCart";
			map.addAttribute("am","0");
		}
		return m;
	}
	
	@RequestMapping(value = "/loadCart")
	public String loadCart(ModelMap map,HttpSession session) 
	{
	String email=(String)session.getAttribute("cust_email"); //session store kardo
	if(email!=null) //session active hai/login hai
	{
		if(ls.checkOrderID(email))
		{
		String oid=ls.getOrderID(email);
		map.addAttribute("listProd",ls.GetOrderDetails(oid));
		map.addAttribute("bill", ls.GetTotalBill(oid));
		map.addAttribute("am",ls.getAmount(email));
		place=new ModelAndView("showCart");
		GoTo="showCart";
		}else if(!ls.checkOrderID(email)) {
			GoTo="ConfirmOrder";

		}
	}
	else if(email==null)
	{
		GoTo="login";
	}
	return GoTo;
	}
	@RequestMapping(value="/orderDetail")
	public String orderdetails(
			@RequestParam("amount") String amount,
			@RequestParam("price") String price,
			@RequestParam("quantity") String quantity,
			@RequestParam("oid") String oid,
			@RequestParam("pid") String pid,
			ModelMap map,
			HttpSession session
			)
	{
		String email=(String)session.getAttribute("cust_email"); //session store kardo
		if(email!=null) //session active hai/login hai
		{
			try {
				int id=ls.getCountOrder_details()+1;
				String odid="OD0"+id;
				double am=Double.parseDouble(amount);
				double pr=Double.parseDouble(price);
				int quan=Integer.parseInt(quantity);
				double new_am=am-(pr*quan);
				order_detail od=new order_detail(odid, am, pr, quan, oid, pid);
				ls.AddOrder_Details(od);
				ls.updateAmount(new_am,email);
				map.addAttribute("listProd",ls.GetProducts());
				next="viewProducts";
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		else if(email==null)
		{
			next="login";
		}
		
		return next;
	}
	
	@RequestMapping(value = "/logout")
	public String Logout(HttpSession session)
	{
	session.removeAttribute("cust_email");
	session.removeAttribute("admin");
	return "login";
	}
	@RequestMapping(value = "/removeOrder")
	public String RemoveOrder(HttpSession S ,@RequestParam("od_id") String odid,ModelMap map)
	{	
		String email=(String)S.getAttribute("cust_email");
		if(email!=null) //session active hai/login hai
		{
	    double price=ls.getPrice(odid);
	    double quan=ls.getQuantity(odid);
		double am=ls.getAmount(email);
		double new_am=am+(price*quan);
		ls.updateAmount(new_am, email);
		ls.RemoveOrder_Details(odid);
		}
		return "index";
	}
	@RequestMapping(value = "/about")
	public String about()
	{	
		return "about";
	}
	@RequestMapping(value = "/admin")
	public String admin() {
		return "Admin";
	}
	@RequestMapping(value = "/adminOrders")
	public String adminOrders(@RequestParam("email") String email,ModelMap map) {
		String oid=ls.getOrderID(email);
		map.addAttribute("listProd",ls.GetOrderDetails(oid));
		map.addAttribute("cust", ls.GetEmlorders(oid));
		map.addAttribute("bill", ls.GetTotalBill(oid));
		return "Admin";
	}
	
	
}
