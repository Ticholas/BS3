package Ticholas.Bean;

/**
 * Created by HFQ on 2016/5/18.
 */
public class BookInfo {
    private String ISBN;
    private String Bookname;
    private String Category;
    private float Price;
    private int StockQuantity;

    public String getBookname() {
        return Bookname;
    }

    public void setBookname(String bookname) {
        Bookname = bookname;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float price) {
        Price = price;
    }

    public int getStockQuantity() {
        return StockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        StockQuantity = stockQuantity;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    @Override
    public String toString() {
        return "[ISBN: " + getISBN() + ", Category:" + getCategory() + "]";
    }
}
