package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Email;

public class SaveEmailQuery {
	public int saveEmail(Email email) throws ClassNotFoundException {
        String SAVE_EMAIL_SQL = "INSERT INTO email" +
                "  (email) VALUES " +
                " (?);";

            int result = 0;
            try (Connection connection = JDBCUtils.getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(SAVE_EMAIL_SQL)) {
                preparedStatement.setString(1, email.getEmail());

                System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                result = preparedStatement.executeUpdate();

            } catch (SQLException e) {
                // process sql exception
                JDBCUtils.printSQLException(e);
            }
            return result;
	  }
}
