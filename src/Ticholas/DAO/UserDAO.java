package Ticholas.DAO;

import Ticholas.Bean.CustomerInfo;
import Ticholas.Bean.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by HFQ on 2016/5/29.
 */
@Repository
public class UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void createUser(User user){
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
    }

    public List<User> findAllUsers(){
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from User";
        List<User> users = session.createQuery(hql).list();
        return users;
    }

    public void removeUser(User user){
        Session session = this.sessionFactory.getCurrentSession();
        session.delete(user);
    }

    public void updateUser(User user){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
    }

    public User findUserById(int userID){
        Session session = this.sessionFactory.getCurrentSession();
        User user = null;
        user = (User)session.get(User.class, userID);
        return user;
    }

    public CustomerInfo getProfile(int userID){
        Session session = this.sessionFactory.getCurrentSession();
        CustomerInfo customerInfo = null;
        customerInfo = (CustomerInfo)session.get(CustomerInfo.class,userID);
        return customerInfo;
    }

    public void updateProfile(CustomerInfo customerInfo){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(customerInfo);
    }

    public int login(User user){
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from User user where user.username = "+ user.getUsername();
        User user1 = (User)(session.createQuery(hql).list().get(0));
        if(user.getPassword().equals(user1.getPassword()))
            return user.getUserID();
        return -1;
    }
}
