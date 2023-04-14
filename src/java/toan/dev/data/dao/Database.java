/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package toan.dev.data.dao;

import toan.dev.data.dao.impl.CategoryDaoImpl;
import toan.dev.data.dao.impl.OrderDaoImpl;
import toan.dev.data.dao.impl.OrderDetailDaoImpl;
import toan.dev.data.dao.impl.ProductDaoImpl;
import toan.dev.data.dao.impl.UserDaoImpl;



public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        // TODO Auto-generated method stub
        return new UserDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }
    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImpl();
    }

}