package com.oracle.oradocs;

import java.net.URL;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.cert.Certificate;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;

public class Authorization<BufferedReader> {
	
	
	public String getAccessToken() {
		String auth_url = "https://oradocs-corp.documents.us2.oraclecloud.com/documents/web?IdcService=GET_OAUTH_TOKEN&redirect=test";
		String br = null ;
		br = testIt(auth_url);
		return br;
	}
	
	private String testIt(String https_url){

	     // String https_url = "https://www.google.com/";
	      URL url;
	      String sb = null;
	      try {

		     url = new URL(https_url);
		     HttpsURLConnection con = (HttpsURLConnection)url.openConnection();

		     //dumpl all cert info
		    print_https_cert(con);

		     //dump all the content
		    sb = print_content(con);

	      } catch (MalformedURLException e) {
		     e.printStackTrace();
	      } catch (IOException e) {
		     e.printStackTrace();
	      }
		return sb;

	   }

	   private void print_https_cert(HttpsURLConnection con){

	    if(con!=null){

	      try {

		System.out.println("Response Code : " + con.getResponseCode());
		System.out.println("Cipher Suite : " + con.getCipherSuite());
		System.out.println("\n");

		Certificate[] certs = con.getServerCertificates();
		for(Certificate cert : certs){
		   System.out.println("Cert Type : " + cert.getType());
		   System.out.println("Cert Hash Code : " + cert.hashCode());
		   System.out.println("Cert Public Key Algorithm : "
	                                    + cert.getPublicKey().getAlgorithm());
		   System.out.println("Cert Public Key Format : "
	                                    + cert.getPublicKey().getFormat());
		   System.out.println("\n");
		}

		} catch (SSLPeerUnverifiedException e) {
			e.printStackTrace();
		} catch (IOException e){
			e.printStackTrace();
		}

	     }

	   }
	   
	   private String print_content(HttpsURLConnection con){
		   java.io.BufferedReader br = null ;
		   StringBuilder sb = new StringBuilder();
			if(con!=null){

			try {

			   System.out.println("****** Content of the URL ********");
			   InputStreamReader in = new InputStreamReader(con.getInputStream());
			   br = new java.io.BufferedReader(in);
				
			   String input;
			  

			   while ((input = br.readLine()) != null){
				   sb = sb.append(input);
			   }
			   br.close();

			} catch (IOException e) {
			   e.printStackTrace();
			}

		       }
			
			return sb.toString();

		   }
	   
	   
	  

	public static void main(String[] args) {
		new Authorization<>().getAccessToken();
	}

}
