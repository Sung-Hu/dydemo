package com.tenco.BD;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/write")
public class WritePostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String author = (String) request.getSession().getAttribute("username");
        
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost:3306/BD?serverTimezone=Asia/Seoul";
            Connection conn = DriverManager.getConnection(dbUrl, "username", "password");
            String sql = "INSERT INTO BDpost (title, content, author_id) VALUES (?, ?, (SELECT id FROM users WHERE username = ?))";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, title);
            statement.setString(2, content);
            statement.setString(3, author);
            statement.executeUpdate();
            conn.close();
            
            response.sendRedirect("dashboard.jsp");
        } catch (SQLException  | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("실패!");
        }
    }
}
