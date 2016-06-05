package Ticholas.Bean;

/**
 * Created by HFQ on 2016/5/18.
 */
public class administrator {
    protected int AdminID;
    protected String AdminUsername;
    protected String AdminPassword;

    public int getAdminID() {
        return AdminID;
    }

    public String getAdminUsername() {
        return AdminUsername;
    }

    public String getAdminPassword() {
        return AdminPassword;
    }

    public void setAdminID(int adminID) {
        AdminID = adminID;
    }

    public void setAdminUsername(String adminUsername) {
        AdminUsername = adminUsername;
    }

    public void setAdminPassword(String adminPassword) {
        AdminPassword = adminPassword;
    }

    @Override
    public String toString() {
        return "[AdminID:" + getAdminID() + ", AdminUsername:" + getAdminUsername() + ", AdminPassword:" + getAdminPassword() + "]";
    }
}
