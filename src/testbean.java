import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by HFQ on 2016/6/2.
 */

public class testbean {
    private int num;
    private String ss;

    public void setNum(int num) {
        this.num = num;
    }

    public void setSs(String ss) {
        this.ss = ss;
    }

    public int getNum() {
        return num;
    }

    public String getSs() {
        return ss;
    }
}
