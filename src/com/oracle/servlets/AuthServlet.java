package com.oracle.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.oradocs.Authorization;
import com.oracle.oradocs.folders.FileVO;
import com.oracle.oradocs.folders.OraDocsFolders;

/**
 * Servlet implementation class AuthServlet
 */
@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String auth_url = "https://oradocs-corp.documents.us2.oraclecloud.com/documents/web?IdcService=GET_OAUTH_TOKEN";
	OraDocsFolders updateLinks = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String auth_token = (String) request.getParameter("token");
		String master_folder_id = (String) request.getParameter("master_folder");
		
		System.out.println(auth_token);
		System.out.println(master_folder_id);
		updateLinks = new OraDocsFolders(auth_token, master_folder_id);
		List<FileVO> updatedFiles = updateLinks.flowOrganizer();
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/success.jsp");
		request.setAttribute("updatedFiles", updatedFiles);
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
