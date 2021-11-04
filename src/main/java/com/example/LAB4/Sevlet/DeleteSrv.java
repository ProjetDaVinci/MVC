package com.example.LAB4.Sevlet;

import com.example.LAB4.DBPackage.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
@WebServlet( value = "/delete")
public class DeleteSrv extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO userDAO = UserDAO.GetInstance();

        String id = req.getParameter("id");

        try{
            userDAO.DeleteUser(Integer.parseInt(id));
        }
        catch(SQLException throwables){
            throwables.printStackTrace();
        }

    }
}
