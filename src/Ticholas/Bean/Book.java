package Ticholas.Bean;


/**
 * Created by HFQ on 2016/5/18.
 */

public class Book {
    protected String ISBN;
    protected String BookName;
    protected float Price;
    protected int StockQuantity;

    public String getISBN() {
        return ISBN;
    }

    public String getBookName() {
        return BookName;
    }

    public float getPrice() {
        return Price;
    }

    public int getStockQuantity() {
        return StockQuantity;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public void setBookName(String bookName) {
        BookName = bookName;
    }

    public void setPrice(float price) {
        Price = price;
    }

    public void setStockQuantity(int stockQuantity) {
        StockQuantity = stockQuantity;
    }

    @Override
    public String toString(){
        return "[ISBN:" + getISBN() + ", Bookname:" + getBookName() + ", Price:" + getPrice() + ", StockQuantity:" + getStockQuantity() + "]";
    }


}
