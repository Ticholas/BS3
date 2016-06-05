package Ticholas.Service;

import Ticholas.Bean.Order;
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

    public void removeOrder(Order order){
        orderDAO.removeOrder(order);
    }

    public void updateOrder(Order order){
        orderDAO.updateOrder(order);
    }

    public Order findOrderById(int orderID){
        return orderDAO.findOrderById(orderID);
    }
}