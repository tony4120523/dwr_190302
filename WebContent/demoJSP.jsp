<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- 使用 http://localhost:8080/dwr_190302 導向 demoJSP.jsp -->
    <head>
        <meta charset="UTF-8">
        <title>demoJSP</title>
        <script type="text/javascript" src="dwr/engine.js"></script>
        <script type="text/javascript" src="dwr/util.js"></script>
        <script type="text/javascript" src="dwr/interface/Communicator.js"></script>  <!-- Communicator 註冊在 dwr.xml -->
        <script type="text/javascript">
			function communicateWithServer() {
				message = $("messageToBackend").value;
				Communicator.doCommunicate(message, function(data) {
					$("messageFromBackend").value = data;
				});
			}
			function clearDisplay() {
				$("messageToBackend").value = "";
				$("messageFromBackend").value = "";
			};
        </script>
    </head>
	<body>
        <br/>
        Communication between Frontend (JavaScript Code) and Backend (JAVA Code)
        <br/>
        Message To Backend : <input id="messageToBackend" type="text" size="90" />
        <input type="button" 
               id="btnCommunicateWithBackend" 
               value="Communicate With Backend" 
               onclick="communicateWithServer()" />


        <br/>Reply From Backend : <input id="messageFromBackend" type="text" size="90"/>
        <input type="button" 
               id="btnClear" 
               value="Clear" 
               onclick="clearDisplay()" />
               
	</body>
</html>
