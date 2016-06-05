package Ticholas.Bean;

import java.io.Serializable;

/**
 * Created by HFQ on 2016/6/5.
 */
public class OrderItemID implements Serializable{
    private int OrderID;
    private String ISBN;

    public int getOrderID() {
        return OrderID;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public void setOrderID(int orderID) {
        OrderID = orderID;
    }
}
