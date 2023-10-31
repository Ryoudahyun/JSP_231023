package boardModel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BoardWriteProcCon.do")
public class BoardWriteProcCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//insert
		//BoardDTO(bean)
		/*방법1
		 * String writer = request.getParameter("writer"); String email =
		 * request.getParameter("email"); String subject =
		 * request.getParameter("subject"); String password =
		 * request.getParameter("password"); String content =
		 * request.getParameter("content");
		 * 
		 * BoardDTO bean = new BoardDTO();
		 * 
		 * bean.setWriter(writer); bean.setEmail(email); bean.setSubject(subject);
		 * bean.setPassword(password); bean.setContent(content);
		 */		
		//방법2
		BoardDTO bean = new BoardDTO();
		bean.setWriter(request.getParameter("writer"));
		bean.setContent(request.getParameter("content"));
		bean.setEmail(request.getParameter("email"));
		bean.setPassword(request.getParameter("password"));
		bean.setSubject(request.getParameter("subject"));
		
		//메서드(insertBoard)
		BoardDAO bdao = new BoardDAO();
		bdao.insertBoard(bean); //오라클에 저장
		
		//출력
		RequestDispatcher dis = request.getRequestDispatcher("BoardListCon.do");
		dis.forward(request, response);
		
	}

}
