package saplich.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;
import detai.model.Detai;
import hoidong.model.Hoidong;
import login.util.DBUtils;
import user.model.User;
public class SaplichDao {
	 private Connection connection;
	    
	public SaplichDao(){
		connection=DBUtils.getConnection();
	}
	 public List<Detai> getAllDetais() {
	        List<Detai> detais = new ArrayList<Detai>();
	        try {
	            Statement statement = connection.createStatement();
	            ResultSet rs = statement.executeQuery("select IDDT,TenDT from detai");
	            while (rs.next()) {
	                Detai detai = new Detai();
	                detai.setIdProject(rs.getInt("IDDT"));
	                detai.setNameProject(rs.getString("TenDT"));
	                detais.add(detai);
	                
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return detais;
	    }
	 public List<User> getGVHDById(int idProject) {
		 List<User> gvhds = new ArrayList<User>();
	        try {
	            PreparedStatement preparedStatement = connection.
	                    prepareStatement("SELECT HoTen,IDTK FROM taikhoan,(SELECT IDGV FROM baocao WHERE IDDT=?) AS T WHERE T.IDGV=taikhoan.IDTK");
	            preparedStatement.setInt(1, idProject);
	            ResultSet rs = preparedStatement.executeQuery();

	            if (rs.next()) {
	            	User gvhd = new User();
	                gvhd.setIdUser(rs.getInt("IDTK"));
	                gvhd.setHoTen(rs.getString("HoTen"));
	                gvhds.add(gvhd);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return gvhds;
	    }
	 
	 public List<User> getGVPBById(String chuyenNganh, int idGVHD) {
		 List<User> gvpbs = new ArrayList<User>();
	        try {
	            PreparedStatement preparedStatement = connection.
	                    prepareStatement("SELECT IDTK,HoTen FROM taikhoan WHERE IDRole=1 AND ChuyenNganh=?");
	            preparedStatement.setString(1, chuyenNganh);
	            ResultSet rs = preparedStatement.executeQuery();

	            while (rs.next()) {
	            	if(rs.getInt("IDTK")!=idGVHD)
	            	{
	            	User gvpb = new User();
	            	
	                gvpb.setIdUser(rs.getInt("IDTK"));
	                gvpb.setHoTen(rs.getString("HoTen"));
	                gvpbs.add(gvpb);
	            	}
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return gvpbs;
	    }
	 public List<User> getUVById(int idUser) {
		 List<User> uyviens = new ArrayList<User>();
	        try {
	            PreparedStatement preparedStatement = connection.
	                    prepareStatement("SELECT IDTK,HoTen FROM taikhoan WHERE IDRole=1 AND IDTK NOT LIKE ?");
	            preparedStatement.setInt(1, idUser);
	            ResultSet rs = preparedStatement.executeQuery();

	            while (rs.next()) {
	            	User uyvien = new User();
	            	
	                uyvien.setIdUser(rs.getInt("IDTK"));
	                uyvien.setHoTen(rs.getString("HoTen"));
	                uyviens.add(uyvien);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return uyviens;
	    }
	 public List<Hoidong> getHoidong() {
		 List<Hoidong> hoidongs = new ArrayList<Hoidong>();
	        try {
	        	Statement statement = connection.createStatement();
	            ResultSet rs = statement.executeQuery("select * from hoidong");
	            

	            while (rs.next()) {
	            	Hoidong hoidong=new Hoidong();
	                hoidong.setTenHoidong(rs.getString("TenHD"));
	                hoidong.setChuyenNganh(rs.getString("ChuyenNganh"));
	                hoidongs.add(hoidong);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return hoidongs;
	    }
}
