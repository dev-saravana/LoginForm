package log;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class user {
  private String uname;
  private String password;

  public void setuser(String name) {
    this.uname = name;
  }

  public String getuser() {
    return uname;
  }

  public void setpass(String pass) {
    this.password = pass;
  }

  public String getpass() {
    return password;
  }

  public boolean signup() throws ClassNotFoundException, SQLException {
    try {
      String query = "insert into users values(?,?);";
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con =
          DriverManager.getConnection("jdbc:mysql://localhost:3306/login ", "root", "root@1234");
      PreparedStatement st = con.prepareStatement(query);
      st.setString(1, uname);
      st.setString(2, password);
      int i = st.executeUpdate();
      if (i == 1) {
        return true;
      } else {
        return false;
      }
    } catch (Exception e) {
      System.out.println("not connected");
    }
    return false;
  }

  public boolean verify() throws ClassNotFoundException, SQLException {
    try {
      String query = "select * from users;";
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con =
          DriverManager.getConnection("jdbc:mysql://localhost:3306/login ", "root", "root@1234");
      Statement st = con.createStatement();
      ResultSet rs = st.executeQuery(query);
      while (rs.next()) {
        if (rs.getString(1).equals(uname) && rs.getString(2).equals(password)) {
          return true;
        }
      }
      return false;
    } catch (Exception e) {
      System.out.println("verification failed");
    }
    return false;
  }
}
