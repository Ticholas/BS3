package Ticholas.Bean;

/**
 * Created by HFQ on 2016/5/18.
 */
public class BookInfo extends Book{
    protected String Category;

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    @Override
    public String toString() {
        return "[Category:" + getCategory() + "]";
    }
}
