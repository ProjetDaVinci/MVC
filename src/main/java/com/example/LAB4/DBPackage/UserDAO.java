package com.example.LAB4.DBPackage;

import com.example.LAB4.Model.Car;
import com.google.gson.Gson;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    Gson gson = new Gson();

    DBWorker dbWorker = new DBWorker();

    public static UserDAO GetInstance(){
        return new UserDAO();
    }

    public void CreateUser(String jsonString) throws SQLException {
        String query = "insert into cars values(?,?,?,?,?,?)";

        PreparedStatement statement = dbWorker.getConnection().prepareStatement(query);

        Car newCar = gson.fromJson(jsonString, Car.class);

        statement.setString(1, null);
        statement.setString(2, newCar.getModel());
        statement.setString(3, newCar.getBrand());
        statement.setString(4, newCar.getLiter());
        statement.setString(5, newCar.getYear());
        statement.setString(6, newCar.getColor());
        statement.execute();
    }


    public String ReadAllUsers() throws SQLException {
        List<Car> allUsersList = new ArrayList<>();

        String query = "select * from cars";
        Statement statement = dbWorker.getConnection().createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()){
            Car newCar = new Car();
            newCar.setModel(resultSet.getString("model"));
            newCar.setBrand(resultSet.getString("brand"));
            newCar.setLiter(resultSet.getString("liter"));
            newCar.setYear(resultSet.getString("year"));
            newCar.setColor(resultSet.getString("color"));
            allUsersList.add(newCar);
        }
        return gson.toJson(allUsersList);
    }

    public Car ReadUser(int id) throws SQLException {
        String query = "select * from cars where id =?";
        PreparedStatement statement = dbWorker.getConnection().prepareStatement(query);
        statement.setInt(1,id);

        ResultSet resultSet = statement.executeQuery();
        Car newCar = new Car();
        while (resultSet.next()){
            newCar.setModel(resultSet.getString("model"));
            newCar.setBrand(resultSet.getString("brand"));
            newCar.setLiter(resultSet.getString("liter"));
            newCar.setYear(resultSet.getString("year"));
            newCar.setColor(resultSet.getString("color"));
        }
        return newCar;
    }

    public void UpdateUser(Car updatedCar, int id) throws SQLException {
        String query = "update cars set model=?,brand =?,liter =?,\"year\" =?,color =? where id =?";
        PreparedStatement statement = dbWorker.getConnection().prepareStatement(query);

        statement.setInt(6,id);

        Car carToUpdate = ReadUser(id);

        if(!updatedCar.getModel().equals(""))
            carToUpdate.setModel(updatedCar.getModel());

        if(!updatedCar.getBrand().equals(""))
            carToUpdate.setBrand(updatedCar.getBrand());

        if(!updatedCar.getLiter().equals(""))
            carToUpdate.setLiter(updatedCar.getLiter());

        if(!updatedCar.getColor().equals(""))
            carToUpdate.setColor(updatedCar.getColor());

        if(!updatedCar.getYear().equals(""))
            carToUpdate.setYear(updatedCar.getYear());

        statement.setString(1, carToUpdate.getModel());
        statement.setString(2, carToUpdate.getBrand());
        statement.setString(3, carToUpdate.getLiter());
        statement.setString(4, carToUpdate.getColor());
        statement.setString(5, carToUpdate.getYear());


        statement.executeUpdate();
    }
    public void DeleteUser(int id) throws SQLException {
        String query = "delete from cars where id =?";
        PreparedStatement statement = dbWorker.getConnection().prepareStatement(query);
        statement.setInt(1,id);


        statement.executeUpdate();
    }

}
