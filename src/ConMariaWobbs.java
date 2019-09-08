package com.ydssbbnc.prj.wobbs;
import java.sql.*;

/* *Function: Provide api to connect wobbs database
 *@author:ydssbbnc
 *email:ydssbbnc@gmail.com/ydssbbnc@163.com
 *Login(name,passwd):return true if login info is correct,or return false
 *Last update time:Thu Aug  8  2019
 *TAG:FINISHED!
 */
public class ConMariaWobbs {
    private final String DRIVER = "org.mariadb.jdbc.Driver";
    private final String URL = "jdbc:mariadb://localhost:3306/wobbs";
    private final String USER = "infinityTemp1";
    private final String PWD="infinityTemp1";
    protected Connection connection;
    protected void InitConnection() throws SQLException{
	connection = DriverManager.getConnection(URL,USER,PWD);
    }
    protected void DestroyConnection() throws SQLException{
	/*Close connection after working*/
	connection.close();
    }
}

