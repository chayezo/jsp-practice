public int idCheck(Connection conn, String userid) {
    // SELECT문 => 한 행 (count)
    int count = 0;
    
    PreparedStatement pstmt = null;
    ResultSet rset = null;
    String sql = prop.getProperty("idCheck");
    
    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userid);
        
        rset = pstmt.executeQuery();
        
        if(rset.next()) {
            count = rset.getInt(1);
        }
        
    } catch (SQLException e) {
        e.printStackTrace();
    }finally {
        close(rset);
        close(pstmt);
    }
    
    return count;
    
}

public int phoneCheck(Connection conn, String userphnumber) {
    // SELECT문 => 한 행 (count)
    
    int count = 0;
    
    PreparedStatement pstmt = null;
    ResultSet rset = null;
    String sql = prop.getProperty("phoneCheck");
    
    try {
        pstmt = conn.prepareStatement(sql);
        
        pstmt.setString(1, userphnumber);
        rset = pstmt.executeQuery();
        
        if(rset.next()) {
            count = rset.getInt(1);
        }
        
    } catch (SQLException e) {
        e.printStackTrace();
    }finally {
        close(rset);
        close(pstmt);
    }
    return count;	
}
public class memberDao {
    
}
