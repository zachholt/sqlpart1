import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:sqlite:/Users/zachholt/Desktop/chinook-2.db";

        try (Connection connection = DriverManager.getConnection(url)) {
            if (connection != null) {
                System.out.println("Connection to SQLite has been established.");
                System.out.println("Logging artists table...");
                PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM artists");
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    System.out.println(resultSet.getString("Name"));
                }

            }
        } catch (SQLException e) {
            System.out.println("An error occurred: " + e.getMessage());
        }
    }
}
