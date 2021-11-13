package util;

import java.sql.*;
import javax.sql.DataSource;
import javax.naming.*;

public class ConnectionPool {
	public static DataSource _ds = null;
	
	public static Connection get() throws NamingException, SQLException {
		if (_ds == null) {
			_ds = (DataSource) (new InitialContext()).lookup("java:comp/env/jdbc/killers61");
		}
		return _ds.getConnection();
	}
}
