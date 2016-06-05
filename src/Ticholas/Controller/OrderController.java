package Ticholas.Controller;

import Ticholas.Bean.Order;
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

    @RequestMapping(value = "/create",method = RequestMethod.GET)
    public ModelAndView createOrderPage(){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderCreate");
        modelAndView.addObject("order",new Order());
        return modelAndView;
    }

    @RequestMapping(value = "/create",method = RequestMethod.POST)
    public ModelAndView createOrder(@ModelAttribute Order order){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderList");
        orderService.createOrder(order);
        //String message = "Order add sucessfully!";
        //modelAndView.addObject("message",message);
        List<?> orders = orderService.findAllOrders();
        modelAndView.addObject("orders",orders);
        return modelAndView;
    }

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView listOrder(){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderList");
        List<?> orderlist = orderService.findAllOrders();
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
        ModelAndView modelAndView = new ModelAndView("View/Order/orderList");
        orderService.updateOrder(order);
        List<?> orderlist = orderService.findAllOrders();
        modelAndView.addObject("orders",orderlist);
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{orderID}",method = RequestMethod.GET)
    public ModelAndView removeOrder(@PathVariable Integer orderID){
        ModelAndView modelAndView = new ModelAndView("View/Order/orderList");
        Order order = orderService.findOrderById(orderID);
        orderService.removeOrder(order);
        List<?> orders = orderService.findAllOrders();
        modelAndView.addObject("orders",orders);
        return modelAndView;
    }
}
