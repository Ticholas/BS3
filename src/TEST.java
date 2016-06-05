import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by HFQ on 2016/5/28.
 */
public class TEST{

    @Autowired
    static testbean tt;

    public static void main(String argvs[]){
        //SpringContext springContext = new SpringContext();
        //testbean tt = (testbean)springContext.getApplicationContext().getBean("testbean");


        System.out.println(tt.getNum());
        System.out.println(tt.getSs());
    }

}
