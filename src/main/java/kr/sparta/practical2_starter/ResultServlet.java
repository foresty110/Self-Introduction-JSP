package kr.sparta.practical2_starter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// 이 서블릿은 /form URL의 GET 및 POST 요청을 모두 처리합니다.
@WebServlet("/result")
public class ResultServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 한글 인코딩 처리
        request.setCharacterEncoding("UTF-8");

        // 폼에서 전송된 데이터 받기
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String mbti = request.getParameter("mbti");
        String food_str = request.getParameter("foods");
        String[] foods = food_str != null ? food_str.split(",") : new String[0];

        // 데이터를 request 객체에 담기
        request.setAttribute("name", name);
        request.setAttribute("age", age);
        request.setAttribute("mbti", mbti);
        request.setAttribute("foods", foods);

        // 결과 페이지로 포워딩 (요청을 다른 페이지로 전달)
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
        dispatcher.forward(request, response);
    }
}
