package com.tenco.BD;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/posts")
public class ViewPostsServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HashMap<String, Object>> posts = new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost:3306/BD?serverTimezone=Asia/Seoul";
			Connection conn = DriverManager.getConnection(dbUrl, "username", "password");
			String sql = "SELECT * FROM BDpost ORDER BY created_at DESC";
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet result = statement.executeQuery();

			while (result.next()) {
				HashMap<String, Object> post = new HashMap<>();
				post.put("id", result.getInt("id"));
				post.put("title", result.getString("title"));
				post.put("content", result.getString("content"));
				post.put("author", result.getString("author_id"));
				post.put("created_at", result.getTimestamp("created_at"));

				posts.add(post);
			}

			conn.close();
		} catch (SQLException  | ClassNotFoundException e) {
			e.printStackTrace();
			response.getWriter().println("게시글을 올리지 못했습니다.");
		}

		request.setAttribute("posts", posts);
		request.getRequestDispatcher("posts.jsp").forward(request, response);
	}
}
