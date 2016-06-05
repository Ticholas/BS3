package Ticholas.Bean;

/**
 * Created by HFQ on 2016/5/18.
 */
public class User {
    protected int UserID;
    protected String Username;
    protected String Password;

    public int getUserID() {
        return UserID;
    }

    public String getUsername() {
        return Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public void setPassword(String password) {
        Password = password;
    }

    @Override
    public String toString() {
        return "[UserID:" + getUserID() + ", Username:" + getUsername() + "]";
    }

}
