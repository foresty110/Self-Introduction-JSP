# 자기소개 웹 애플리케이션 JSP 버전

### 프로젝트 개요
이 프로젝트는 Servlet과 JSP를 활용하여 간단한 자기소개 웹 애플리케이션을 구현한 예제입니다.    
사용자가 웹 폼을 통해 이름, 나이, MBTI, 좋아하는 음식 등의 정보를 입력하면, 서버가 이를 처리하여 JSP 페이지에서 결과를 출력합니다.   
이를 통해 폼 데이터 수집 → 서블릿 처리 → JSP 출력까지의 웹 애플리케이션 기본 흐름을 학습할 수 있습니다.
___

### 학습 목표
- Servlet과 JSP 연동: request.getParameter()와 request.setAttribute()를 활용하여 폼 데이터를 처리하고 JSP에 전달
- 서버-클라이언트 데이터 통신: POST 요청으로 클라이언트에서 서버로 데이터를 전송하는 과정 이해
- JSP 출력: <%= %> 구문을 활용하여 서버로부터 전달받은 데이터를 JSP 페이지에 동적으로 출력
  
---

### 개발 환경
- Java
- Servlet API 3.1 (javax.servlet-api-3.1.0.jar)
- Tomcat 9.0.107
- IntelliJ IDEA

---

### 주요 기능

- **자기소개 입력 폼**
  - 이름, 나이, MBTI, 좋아하는 음식 입력 가능
  - 음식은 콤마(,)로 구분하여 여러 개 입력 가능
- **폼 데이터 서버 전송**
  - 입력된 폼 데이터를 POST 방식으로 Servlet에 전송하고 JSP에 전달
- **결과 출력**
  - 데이터를 동적으로 출력

---

### 폴더 구조
```
📁 practical2_starter
└── 📁 src
    └── 📁 main
        ├── 📁 java
        │   └── 📁 kr
        │       └── 📁 sparta
        │           └── 📁 practical2_starter
        │               ├── 📄 FormServlet.java 
        │               └── 📄 ResultServlet.java 
        └── 📁 webapp
            └── 📁 WEB-INF
                └── 📁 jsp
                    ├── 📄 form.jsp
                    └── 📄 result.jsp
```

---

### 실행 방법
1. IDE에서 Tomcat 서버 실행
2. 브라우저에서 다음 주소로 접속   
   http://localhost:8080/form
3. 이름, 나이, MBTI, 좋아하는 음식을 입력하고 제출하기 버튼 클릭
   
---

### 결과 화면
[입력 폼 화면]

<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/cc7ecbcf-ea01-43d1-a140-051069f83b81" />

[실행 화면]

<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/fbbde80c-6b54-4bb3-8af7-8da19cf25f25" />

--- 

### 트러블 슈팅
Spring Boot에서 /form 요청을 JSP로 포워딩하려 했으나, JSP가 templates/에 있어 브라우저에 표시되지 않았습니다.     
JSP는 톰캣이 처리해야 하므로 올바른 폴더에 위치해야 하고, HTML 파일과 이름이 충돌하면 포워딩 실패하기 때문입니다.       
JSP를 WEB-INF/jsp/로 이동하고, templates 폴더의 같은 이름 HTML 삭제하여 정상 렌더링 화면 출력을 성공할 수 있었습니다. 
   
[상세 내용은 이곳에서 확인할 수 있습니다](https://j-do-challenge.tistory.com/35)
