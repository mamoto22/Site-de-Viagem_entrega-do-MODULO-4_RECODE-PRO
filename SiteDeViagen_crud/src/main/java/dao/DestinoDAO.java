package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DatabaseConnection;

import model.Destino;

public class DestinoDAO {

	private Connection connection;
	private String sql;

	public DestinoDAO() throws SQLException {
		connection = DatabaseConnection.createConnection();
	}

	public void closeConnection() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createDestino(Destino destino) {
		sql = "INSERT INTO destino (id, nomeDestino, dataViagen) VALUES (?,?,?)";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, destino.getId());
			stmt.setString(2, destino.getNomeDestino());
			stmt.setString(3, destino.getDataViagen());
			

			Date data = Date.valueOf(destino.getDataViagen());

			stmt.setDate(4, data);

			stmt.executeUpdate();

			System.out.println("destinoe criado com sucesso!");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Destino finddestino(int id) {
		Destino destino = null;
		sql = "SELECT * FROM destino WHERE id=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setInt(1, id);
			ResultSet r = stmt.executeQuery();

			if (r.next()) {
				destino = new Destino();
				destino.setId(r.getInt("id"));
				destino.setNomeDestino(r.getString("nomeDestino"));
				destino.setDataViagen(r.getDate("dataViagen").toLocalDate());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return destino;
	}
	
	
	
	public List<Destino> finddestinos() {

		String sql = "SELECT * FROM destino";

		List<Destino> destinos = new ArrayList<Destino>();

		ResultSet r = null;

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			r = stmt.executeQuery();

			while (r.next()) {
				Destino destino = new Destino();
				destino = new Destino();
				destino.setId(r.getInt("id"));
				destino.setNomeDestino(r.getString("nomeDestino"));
				destino.setDataViagen(r.getDate("dataViagen").toLocalDate());

				destinos.add(destino);
			}
		} catch (Exception e) {

			e.printStackTrace();

		}
		return destinos;

	}
	
	
	

	public void updatedestino(Destino destino) {
		sql = "UPDATE destino SET nomeDestino = ?, dataViagen = ?, WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, destino.getNomeDestino());
			stmt.setString(2, destino.getDataViagen());
			

			Date sqlDate = Date.valueOf(destino.getDataViagen());

			stmt.setDate(4, sqlDate);
			stmt.setInt(5, destino.getId());

			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void deletedestino(int id) {
		sql = "DELETE FROM destino WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			stmt.executeUpdate();

			System.out.println("destinoe Deletado com sucesso!");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
