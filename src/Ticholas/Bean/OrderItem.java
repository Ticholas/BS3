package Ticholas.Bean;

/**
 * Created by HFQ on 2016/5/18.
 */
public class OrderItem extends Order{
    protected OrderItemID orderItemID;
    protected int Quantity;
    protected float TotalPrice;
    protected String Bookname;

    @Override
    public int getUserID() {
        return super.getUserID();
    }

    @Override
    public int getOrderID() {
        return super.getOrderID();
    }

    public int getQuantity() {
        return Quantity;
    }

    public float getTotalPrice() {
        return TotalPrice;
    }

    public String getBookname() {
        return Bookname;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public void setTotalPrice(float totalPrice) {
        TotalPrice = totalPrice;
    }

    public void setBookname(String bookname) {
        Bookname = bookname;
    }

    public OrderItemID getOrderItemID() {
        return orderItemID;
    }

    public void setOrderItemID(OrderItemID orderItemID) {
        this.orderItemID = orderItemID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof OrderItem)) return false;

        OrderItem orderItem = (OrderItem) o;

        return orderItemID.equals(orderItem.orderItemID);

    }

    @Override
    public int hashCode() {
        return orderItemID.hashCode();
    }

    @Override
    public String toString() {
        return "[ISBN:" + orderItemID.getISBN() + ", Bookname:" + getBookname() + ", Quantity:" + getQuantity() + ", TotalPrice:" + getTotalPrice() + "]";
    }
}