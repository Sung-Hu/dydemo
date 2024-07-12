package com.tenco.controller;

import java.io.IOException;
import java.util.List;

import com.tenco.model.TodoDAO;
import com.tenco.model.TodoDAOImpl;
import com.tenco.model.TodoDTO;
import com.tenco.model.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test/*")
public class TestController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    private TodoDAO todoDAO;

    public TestController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        //userDAO = new UserDAOImpl();
        todoDAO = new TodoDAOImpl();
    }

    // http://localhost:8080/mvc/test/t1
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getPathInfo();
        
        
        
        
        // select id
//        List<TodoDTO> list = todoDAO.getTodosByUserId(1);
//        System.out.println(list.toString());

        // select All
//        todoDAO.getAllTodos();
//        System.out.println(todoDAO.getAllTodos());
        

        // delete
//        todoDAO.deleteTodo(2, 1);



        // add 
//        TodoDTO dto = TodoDTO.builder()
//                .title("에수파")
//                .description("수수수수파노바")
//                .dueDate("2024-07-11")
//                .completed(null)
//                .build();
//        todoDAO.addTodo(dto, 5);

        // update
//        TodoDTO dto = TodoDTO.builder()
//        		.id(1)
//                .title("윈터vs카리나")
//                .description("사실 비슷하게 생김")
//                .build();
//        todoDAO.updateTodo(dto, 1);

//        TodoDTO todoDTO = todoDAO.getTodoById(2);
//        System.out.println(todoDTO.toString());

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }

}