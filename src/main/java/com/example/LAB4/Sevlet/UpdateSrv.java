package com.example.LAB4.Sevlet;

import com.example.LAB4.DBPackage.UserDAO;
import com.example.LAB4.Model.Car;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.stream.Collectors;

@WebServlet(value = "/update")
public class UpdateSrv extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson = new Gson();
        UserDAO userDAO = UserDAO.GetInstance();

        String UserData = new BufferedReader(new InputStreamReader(req.getInputStream())).lines().collect(Collectors.joining());

        Car newCar = gson.fromJson(UserData, Car.class);
        int id = newCar.getId();

        try{
          userDAO.UpdateUser(newCar,id);
        }
        catch(SQLException throwables){
            throwables.printStackTrace();
        }

    }
}
