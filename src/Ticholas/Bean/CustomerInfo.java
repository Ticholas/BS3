package Ticholas.Bean;

/**
 * Created by HFQ on 2016/5/18.
 */
public class CustomerInfo{
    protected int userID;
    protected String username;
    protected String gender;

    public int getUserID() {
        return userID;
    }

    public String getUsername() {
        return username;
    }

    public String getGender() {
        return gender;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
