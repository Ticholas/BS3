package Ticholas.Controller;

import Ticholas.Bean.BookInfo;
import Ticholas.Bean.Order;
import Ticholas.Bean.OrderItem;
import Ticholas.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by HFQ on 2016/6/4.
 */
@Controller
@RequestMapping(value = "/Order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView listAllOrder(){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderList");
        List<?> orderlist = orderService.findAllOrders();
        modelAndView.addObject("orders",orderlist);
        return modelAndView;
    }

    @RequestMapping(value = "/list/{userID}",method = RequestMethod.GET)
    public ModelAndView listOrderList(@PathVariable int userID){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderList");
        List<?> orderlist = orderService.findOrderList(userID);
        modelAndView.addObject("orders",orderlist);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{orderID}",method = RequestMethod.GET)
    public ModelAndView editOrderPage(@PathVariable Integer orderID){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderUpdate");
        Order order = orderService.findOrderById(orderID);
        modelAndView.addObject("order",order);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{orderID}",method = RequestMethod.POST)
    public ModelAndView editOrder(@ModelAttribute Order order,@PathVariable Integer orderID){
        ModelAndView modelAndView = new ModelAndView("redirect:/Order/list");
        orderService.updateOrder(order);
        List<?> orderlist = orderService.findAllOrders();
        modelAndView.addObject("orders",orderlist);
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{orderID}",method = RequestMethod.GET)
    public ModelAndView removeOrder(@PathVariable Integer orderID){
        ModelAndView modelAndView = new ModelAndView("redirect:/Order/list");
        Order order = orderService.findOrderById(orderID);
        orderService.removeOrder(order);
        List<?> orders = orderService.findAllOrders();
        modelAndView.addObject("orders",orders);
        return modelAndView;
    }

    @RequestMapping(value = "/list/{orderID}",method = RequestMethod.GET)
    public ModelAndView listOrderItem(@PathVariable Integer orderID){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderItemList");
        List<OrderItem> orderItems = orderService.findOrderItemList(orderID);
        modelAndView.addObject("orderItems",orderItems);
        return modelAndView;
    }

    @RequestMapping(value = "/shoppingCart/{userID}",method = RequestMethod.GET)
    public ModelAndView shoppingCart(@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("View/Order/shoppingCart");
        List<OrderItem> orderItems = orderService.getShoppingCart(userID);
        modelAndView.addObject("orderItems",orderItems);
        return modelAndView;
    }

    @RequestMapping(value = "/addToCart/{userID}",method = RequestMethod.POST)
    public ModelAndView addToCart(@ModelAttribute BookInfo bookInfo,@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("redirect:/Order/list/" + userID);
        orderService.addToCart(bookInfo,userID);
        return modelAndView;
    }




}
