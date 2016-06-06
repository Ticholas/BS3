package Ticholas.Service;

import Ticholas.Bean.CustomerInfo;
import Ticholas.Bean.User;
import Ticholas.DAO.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by HFQ on 2016/6/4.
 */
@Service
@Transactional
public class UserService {

    @Autowired
    private UserDAO userDAO;

    public void createUser(User user){
        userDAO.createUser(user);
    }

    public List<User> findAllUsers(){
        return userDAO.findAllUsers();
    }

    public void removeUser(User user){
        userDAO.removeUser(user);
    }

    public void updateUser(User user){
        userDAO.updateUser(user);
    }

    public User findUserById(int userID){
        return userDAO.findUserById(userID);
    }

    public CustomerInfo getProfile(int userID){
        return userDAO.getProfile(userID);
    }

    public void updateProfile(CustomerInfo customerInfo){
        userDAO.updateProfile(customerInfo);
    }

    public int login(User user){
        return userDAO.login(user);
    }
}
