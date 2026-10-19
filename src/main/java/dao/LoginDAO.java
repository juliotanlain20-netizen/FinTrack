
package dao;

import model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.mindrot.jbcrypt.BCrypt;

public class LoginDAO {

    public User authenticateUser(String emailOrUsername, String password) {
        User user = null;

        String sql = "SELECT * FROM Users WHERE email = ? OR username = ?";

        try (Connection conn = JDBC.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, emailOrUsername);
            stmt.setString(2, emailOrUsername);

            try (ResultSet rs = stmt.executeQuery()) {

                if (rs.next()) {

                    // AMBIL HASH PASSWORD DARI DATABASE
                    String hashedPassword = rs.getString("password");

                    // VERIFIKASI PASSWORD DENGAN BCRYPT
                    if (hashedPassword != null &&
                        BCrypt.checkpw(password, hashedPassword)) {

                        user = new User();

                        user.setUserID(rs.getInt("user_id"));
                        user.setUsername(rs.getString("username"));
                        user.setEmail(rs.getString("email"));
                    }
                }
            }

        } catch (SQLException e) {
            System.out.println("Error saat autentikasi user: " + e.getMessage());
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            System.out.println("Format hash password tidak valid.");
        } catch (NullPointerException e) {
            System.out.println("Koneksi gagal dibuat.");
        }

        return user;
    }
}
