package Ticholas.Service;

import Ticholas.Bean.BookInfo;
import Ticholas.Bean.Order;
import Ticholas.Bean.OrderItem;
import Ticholas.DAO.OrderDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by HFQ on 2016/6/4.
 */
@Service
@Transactional
public class OrderService {

    @Autowired
    private OrderDAO orderDAO;

    public void createOrder(Order order){
        orderDAO.createOrder(order);
    }

    public List<Order> findAllOrders(){
        return orderDAO.findAllOrders();
    }

    public List<Order> findOrderList(int userID){
        return orderDAO.findOrderList(userID);
    }

    public void removeOrder(Order order){
        orderDAO.removeOrder(order);
    }

    public void updateOrder(Order order){
        orderDAO.updateOrder(order);
    }

    public Order findOrderById(int orderID){
        return orderDAO.findOrderById(orderID);
    }

    public void addOrderItem(OrderItem orderItem){
        orderDAO.addOrderItem(orderItem);
    }

    public void updateOrderItem(OrderItem orderItem){
        orderDAO.updateOrderItem(orderItem);
    }

    public void removeOrderItem(OrderItem orderItem){
        orderDAO.removeOrderItem(orderItem);
    }

    public List<OrderItem> findOrderItemList(int orderID){
        return orderDAO.findOrderItemList(orderID);
    }

    public List<OrderItem> findAllOrderItems(){
        return orderDAO.findAllOrderItems();
    }

    public List<OrderItem> getShoppingCart(int userID){
        return orderDAO.getShoppingCart(userID);
    }

    public void addToCart(BookInfo bookInfo,int userID){
        this.orderDAO.addToCart(bookInfo,userID);
    }

}