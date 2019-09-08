package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
public class UpdateUSER_ALL_IN_ONECookie{
    UpdateUSER_ALL_IN_ONECookie(HttpServletResponse rsp,String NAME)throws SQLException{
	String USER_NUMS=new GetUserNumbers().Get(NAME);
	String AVATAR=new FindUserAvatar().Find(NAME);
	String USER_ALL_IN_ONE="`"+NAME+"`"+AVATAR+"`"+USER_NUMS;
	Cookie user_all_in_one=new Cookie("USER_ALL_IN_ONE",USER_ALL_IN_ONE);
	rsp.addCookie(user_all_in_one);
    }
}
