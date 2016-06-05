package Ticholas.Bean;

import java.util.Date;

/**
 * Created by HFQ on 2016/5/18.
 */
public class Order {
    protected int UserID;
    protected int OrderID;
    private String Finished;
    protected Date Date;

    public int getUserID() {
        return UserID;
    }

    public int getOrderID() {
        return OrderID;
    }

    public String getFinished(){
        return Finished;
    }

    public Date getDate() { return Date;}

    public void setUserID(int userID) {
        UserID = userID;
    }

    public void setOrderID(int orderID) {
        OrderID = orderID;
    }

    public void setFinished(String finished) {
        Finished = finished;
    }

    public void setDate(Date date) { Date = date;}

    public String toString(){
        return "Model.Order [UserID=" + UserID + ", OrderID=" + OrderID + ", Finished=" + Finished + ", Date=" + Date + "]";
    }
}