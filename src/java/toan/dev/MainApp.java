package toan.dev;


import toan.dev.data.dao.CategoryDao;
import toan.dev.data.dao.OrderDao;
import toan.dev.data.dao.OrderDetailDao;
import toan.dev.data.dao.ProductDao;
import toan.dev.data.dao.UserDao;

import toan.dev.data.dao.CategoryDao;
import toan.dev.data.dao.impl.CategoryDaoImpl;
import toan.dev.data.dao.impl.OrderDaoImpl;
import toan.dev.data.dao.impl.OrderDetailDaoImpl;
import toan.dev.data.dao.impl.ProductDaoImpl;
import toan.dev.data.dao.impl.UserDaoImpl;

import toan.dev.data.dao.model.Category;
import toan.dev.data.dao.model.Order;
import toan.dev.data.dao.model.OrderDetail;
import toan.dev.data.dao.model.Product;
import toan.dev.data.dao.model.User;


public class MainApp {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//User
		UserDao userDao = new UserDaoImpl();
		User user = new User("toan@gmail.com", "123456", "admin");
		userDao.insert(user);
		
		//category
		CategoryDao categoryDao = new CategoryDaoImpl();
		Category category = new Category("AoNam", "https://localhost/public/img1.jpg");
		categoryDao.insert(category);
		
		//Order
		OrderDao orderDao = new OrderDaoImpl();
		Order order = new Order("10", "still", 0);
		orderDao.insert(order);
		
		//Orderdetail
		 OrderDetailDao orderdetailDao = new OrderDetailDaoImpl();
		 OrderDetail orderdetail = new OrderDetail(0, 0, 0, 0);
		 orderdetailDao.insert(orderdetail);
 
		//Product
		ProductDao productDao = new ProductDaoImpl();
		Product product = new Product(0, "toan", "mmm", 999, 5, 4, 1, null);
		productDao.insert(product);
			
		System.out.println("success");
		
	}	
}
