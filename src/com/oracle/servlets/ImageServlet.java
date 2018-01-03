package com.oracle.servlets;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.oradocs.folders.FileVO;
import com.oracle.oradocs.images.ImageVO;
import com.oracle.oradocs.images.OraDocsImagesDownload;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OraDocsImagesDownload downloadImages = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "";
		String folder = "";
		String request_type = (String) request.getParameter("imagedownload");
		
		if(request_type.equalsIgnoreCase("Image Download")) {
			String auth_token = (String) request.getParameter("token");
			String master_folder_id = (String) request.getParameter("master_folder");
			
			System.out.println(auth_token);
			System.out.println(master_folder_id);
			downloadImages = new OraDocsImagesDownload(auth_token, master_folder_id);
			//List<FileVO> previewLks = downloadImages.flowOrganizer();
			/*List<String> previewLks = downloadImages.flowOrganizerrr();
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/folders.jsp");
			//request.setAttribute("previewLks", previewLks);
			requestDispatcher.forward(request, response);*/
			
			List<String> previewLks = downloadImages.flowOrganizerrr();
			System.out.println(previewLks.size());
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/slideshowk.jsp");
			request.setAttribute("previewLks", previewLks);
			requestDispatcher.forward(request, response);
			
		}else if(request_type.equalsIgnoreCase("Slide Show")) {
			//List<ImageVO> files = getFilesinFolder();
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/folders.jsp");
			//request.setAttribute("files", files);
			requestDispatcher.forward(request, response);
		}else if (request_type.equalsIgnoreCase("customers")) {
			System.out.println("here");
			path = "D:\\Git_Phani\\OraDocs_I\\WebContent\\downloadeImages\\customers\\";
			folder = "customers";
			List<ImageVO> files = getFilesinFolder(path);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/slideshow2.jsp");
			request.setAttribute("files", files);
			request.setAttribute("folder", folder);
			requestDispatcher.forward(request, response);
		}else if(request_type.equalsIgnoreCase("community")) {
			path = "D:\\Git_Phani\\OraDocs_I\\WebContent\\downloadeImages\\community\\";
			folder = "community";
			List<ImageVO> files = getFilesinFolder(path);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/slideshow2.jsp");
			request.setAttribute("files", files);
			request.setAttribute("folder", folder);
			requestDispatcher.forward(request, response);
		}else if(request_type.equalsIgnoreCase("people")) {
			folder = "people";
			path = "D:\\Git_Phani\\OraDocs_I\\WebContent\\downloadeImages\\people\\";
			List<ImageVO> files = getFilesinFolder(path);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/slideshow2.jsp");
			request.setAttribute("files", files);
			request.setAttribute("folder", folder);
			requestDispatcher.forward(request, response);
		}
			
		
		
		
	
	}
	
	

	private  List<ImageVO> getFilesinFolder(String folderPath) {
		List<ImageVO> allFiles = new ArrayList<>();
		/*Path p = Paths.get("D:\\Git_Phani\\OraDocs_I\\WebContent\\downloadeImages\\");
		String fileName = p.getFileName().toString();
		System.out.println(fileName);
		String directory = p.getParent().toString();*/
		System.out.println(folderPath);
		File folder = new File(folderPath);
		File[] listOfFiles = folder.listFiles();

		    for (int i = 0; i < listOfFiles.length; i++) {
		      if (listOfFiles[i].isFile()) {
		    	  
		    	  ImageVO imageData= new ImageVO();
		    	  String[] file_name = listOfFiles[i].getName().split("_");
		  			imageData.setImage_name( listOfFiles[i].getName());
		  			imageData.setFolder_name(file_name[0].toString());
		  		allFiles.add(imageData);
		        System.out.println("File " + listOfFiles[i].getName());
		      } else if (listOfFiles[i].isDirectory()) {
		        System.out.println("Directory " + listOfFiles[i].getName());
		      }
		    }
		
		
		return allFiles;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
