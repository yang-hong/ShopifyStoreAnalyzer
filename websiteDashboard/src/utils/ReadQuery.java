package utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import model.Info;

public class ReadQuery {
	private Connection conn;
	private ResultSet results;
	
	public ReadQuery() {
		Properties props = new Properties();
		InputStream instr = getClass().getResourceAsStream("dbConn.properties");
		try {
			props.load(instr);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			instr.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String driver = props.getProperty("driver.name");
		String url = props.getProperty("server.name");
	    String username = props.getProperty("user.name");
	    String password = props.getProperty("user.password");

	    try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
	
	

    public static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public static Date getSQLDate(LocalDate date) {
        return java.sql.Date.valueOf(date);
    }

    public static LocalDate getUtilDate(Date sqlDate) {
        return sqlDate.toLocalDate();
    }
    
    public void doRead() {
    	String query = "SELECT * FROM maininfosample ORDER BY webaddr DESC";
    	
    	try {
			PreparedStatement ps = conn.prepareStatement(query);
			this.results = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	}
    
    public List<Info> selectAllInfo() {
    	List<Info> info = new ArrayList<>();
    	
    	try { while(this.results.next()) {
		   	
			String webaddr = this.results.getString("webaddr");
			String dailytraffic = this.results.getString("dailytraffic");
			String bestselling = this.results.getString("bestselling");
			String fbcampaigns = this.results.getString("fbcampaigns");
			int authorityscore = this.results.getInt("authorityscore");
			int backlinks = this.results.getInt("backlinks");
			int domains = this.results.getInt("domains");
			int ips = this.results.getInt("ips");
			int followlinks = this.results.getInt("followlinks");
			int nofollowlinks = this.results.getInt("nofollowlinks");
			int textlinks = this.results.getInt("textlinks");
			int imagelinks = this.results.getInt("imagelinks");
			
			info.add(new Info(webaddr, dailytraffic, bestselling, fbcampaigns, authorityscore, backlinks, domains, ips, followlinks, nofollowlinks, textlinks, imagelinks));
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    	
    	
    	return info;
    }
    
    public String getHTMLtable() {
    	String table = "";
    	table += "<table border =1>";
    	try {
			while(this.results.next()) {
				Info info = new Info(table, table, table, table, 0, 0, 0, 0, 0, 0, 0, 0);
				info.setWebaddr(this.results.getString("webaddr"));
				info.setDailytraffic(this.results.getString("dailytraffic"));
				info.setBestselling(this.results.getString("bestselling"));
				info.setFbcampaigns(this.results.getString("fbcampaigns"));
				info.setAuthorityscore(this.results.getInt("authorityscore"));
				info.setBacklinks(this.results.getInt("backlinks"));
				info.setDomains(this.results.getInt("domains"));
				info.setIps(this.results.getInt("ips"));
				info.setFollowlinks(this.results.getInt("followlinks"));
				info.setNofollowlinks(this.results.getInt("nofollowlinks"));
				info.setTextlinks(this.results.getInt("textlinks"));
				info.setImagelinks(this.results.getInt("imagelinks"));
				
				table += "<tr>";
				
				table +="<td>";
				table += info.getWebaddr();
				table += "</td>";
				
				table +="<td>";
				table += info.getDailytraffic();
				table +="</td>";
				
				table +="<td>";
				table += info.getBestselling();
				table += "</td>";
				
				table +="<td>";
				table += info.getFbcampaigns();
				table +="</td>";
				
				table +="<td>";
				table += info.getAuthorityscore();
				table += "</td>";
				
				table +="<td>";
				table += info.getBacklinks();
				table +="</td>";
				
				table +="<td>";
				table += info.getDomains();
				table += "</td>";
				
				table +="<td>";
				table += info.getIps();
				table +="</td>";
				
				table +="<td>";
				table += info.getFollowlinks();
				table += "</td>";
				
				table +="<td>";
				table += info.getNofollowlinks();
				table +="</td>";
				
				table +="<td>";
				table += info.getTextlinks();
				table += "</td>";
				
				table +="<td>";
				table += info.getImagelinks();
				table +="</td>";
				
				table+= "</tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	table +="</table>";
    	
    	return table;
    }

}
