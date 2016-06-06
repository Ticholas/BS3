package Ticholas.Controller;

import Ticholas.Bean.CustomerInfo;
import Ticholas.Bean.User;
import Ticholas.Service.UserService;
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
@RequestMapping(value = "/User")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/create",method = RequestMethod.GET)
    public ModelAndView createUserPage(){
        ModelAndView modelAndView = new ModelAndView("View/User/userCreate");
        modelAndView.addObject("user",new User());
        return modelAndView;
    }

    @RequestMapping(value = "/create",method = RequestMethod.POST)
    public ModelAndView createUser(@ModelAttribute User user){
        ModelAndView modelAndView = new ModelAndView("redirect:/User/list");
        userService.createUser(user);
        List<?> users = userService.findAllUsers();
        modelAndView.addObject("users",users);
        return modelAndView;
        //return listUser();
    }

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView listUser(){
        ModelAndView modelAndView = new ModelAndView("View/User/userList");
        List<?> userlist = userService.findAllUsers();
        modelAndView.addObject("users",userlist);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{userID}",method = RequestMethod.GET)
    public ModelAndView editUserPage(@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("View/User/userUpdate");
        User user = userService.findUserById(userID);
        modelAndView.addObject("user",user);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{userID}",method = RequestMethod.POST)
    public ModelAndView editUser(@ModelAttribute User user,@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("redirect:/User/list");
        userService.updateUser(user);
        List<?> userlist = userService.findAllUsers();
        modelAndView.addObject("users",userlist);
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{userID}",method = RequestMethod.GET)
    public ModelAndView removeUser(@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("redirect:/User/list");
        User user = userService.findUserById(userID);
        userService.removeUser(user);
        List<?> users = userService.findAllUsers();
        modelAndView.addObject("users",users);
        return modelAndView;
    }

    @RequestMapping(value = "/profile/edit/{userID}",method = RequestMethod.GET)
    public ModelAndView editProfilePage(@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("View/User/editProfile");
        CustomerInfo customerInfo = userService.getProfile(userID);
        modelAndView.addObject("profile",customerInfo);
        return modelAndView;
    }

    @RequestMapping(value = "/profile/edit/{userID}",method = RequestMethod.POST)
    public ModelAndView editProfile(@ModelAttribute CustomerInfo customerInfo,@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("View/User/userCenter");
        userService.updateProfile(customerInfo);
        CustomerInfo profile = userService.getProfile(userID);
        modelAndView.addObject("profile",profile);
        return modelAndView;
    }

    @RequestMapping(value = "/profile/{userID}",method = RequestMethod.GET)
    public ModelAndView getProfile(@PathVariable Integer userID){
        ModelAndView modelAndView = new ModelAndView("View/User/userCenter");
        CustomerInfo profile = userService.getProfile(userID);
        modelAndView.addObject("profile",profile);
        return modelAndView;
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView loginPage(){
        ModelAndView modelAndView = new ModelAndView("View/Logon/login");
        modelAndView.addObject("user",new User());
        return modelAndView;
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute User user){
        ModelAndView modelAndView;
        int userID = userService.login(user);
        if(userID == -1)
        {
            modelAndView = new ModelAndView("View/Logon/login");
            modelAndView.addObject("user",new User);
            modelAndView.addObject("message","Invalid Username or Password!");
        }
        else
        {
            modelAndView = new ModelAndView("View/User/userCenter");
            modelAndView.addObject("userID",userID);
        }
        return modelAndView;
    }


}

