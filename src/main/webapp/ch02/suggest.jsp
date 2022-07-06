<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%!
		String[] keywords = {	//검색어목록 실제로는 DB에 저장되어 있을것임.
				"AJAX",
				"AJAX 실전 프로그래밍",
				"자바",
				"자바 프로그래밍",
				"자바 서버 페이지",
				"자바 스터디",
				"자바 서비스",
				"자바 캔"
		};

		public List search(String keyword){
				if( keyword == null || keyword.equals(""))
						return java.util.Collections.EMPTY_LIST;
				keyword = keyword.toUpperCase();
				List result = new java.util.ArrayList(8);
				for( int i = 0; i < keywords.length; i++){
						if(((String)keywords[i]).startsWith(keyword)){
									result.add(keywords[i]);
						}//keyword를 사용해서 제시어 목록을 추출해주는 메서드
				}
				return result;
		}
%>
<%
		request.setCharacterEncoding("utf-8");
		String keyword = request.getParameter("keyword");
		List keywordList=  search(keyword);
		out.print(keywordList.size()); //제시어 개수 출력
		out.print("|");
		for(int i = 0; i < keywordList.size(); i++){
				String key = (String)keywordList.get(i);
				out.print(key);
				if(i < keywordList.size() -1){
						out.print(","); //제시어 목록을 CSV양식으로 출력해줌 
				}
		}
%>
