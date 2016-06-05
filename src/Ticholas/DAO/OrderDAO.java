package Ticholas.DAO;

import Ticholas.Bean.Order;
import Ticholas.Bean.OrderItem;
import Ticholas.Bean.OrderItemID;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by HFQ on 2016/6/4.
 */
@Repository
public class OrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public void createOrder(Order order)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(order);
    }

    public List<Order> findAllOrders(){
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from Order";
        List<Order> orders = session.createQuery(hql).list();
        return orders;
    }

    public void removeOrder(Order order){
        Session session = this.sessionFactory.getCurrentSession();
        session.delete(order);
    }

    public void updateOrder(Order order){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(order);
    }

    public Order findOrderById(int orderID){
        Session session = this.sessionFactory.getCurrentSession();
        Order order = null;
        order = (Order)session.get(Order.class, orderID);
        return order;
    }

    public OrderItem findOrderItemById(OrderItemID orderItemID){
        Session session = this.sessionFactory.getCurrentSession();
        OrderItem orderItem = null;
        orderItem = (OrderItem)session.get(OrderItem.class,orderItemID);
        return orderItem;
    }

    public void addOrderItem(OrderItem orderItem)
    {
        Session session = this.sessionFactory.getCurrentSession();
        OrderItem item = findOrderItemById(orderItem.getOrderItemID());
        if(item == null)
        {
            session.save(item);
        }
        else
        {
            int Quantity = orderItem.getQuantity();
            Quantity += item.getQuantity();
            item.setQuantity(Quantity);
            session.update(item);
        }
    }

    public void updateOrderItem(OrderItem orderItem)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(orderItem);
    }

    public void removeOrderItem(OrderItem orderItem){
        Session session = this.sessionFactory.getCurrentSession();
        session.delete(orderItem);
    }

    public List<OrderItem> findAllOrderItems(int orderID){
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from OrderItem where OrderItem.orderID = " + orderID;
        List<OrderItem> orderItems = session.createQuery(hql).list();
        return orderItems;
    }


}