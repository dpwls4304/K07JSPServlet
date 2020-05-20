package websocket;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;

//웹소켓 서버의 요청명 지정(http://호스트:포트/컨텍스트루트/ChatServer01)
@ServerEndpoint("/ChatServer01")
public class ChatServer01 {
	
	//클라이언트가 접속했을 때 처리
	@OnOpen
	public void onOpen() {
		System.out.println("연결되었습니다...");
	}
	
	//클라이언트와의 접속이 끊어졌을 때..
	@OnClose
	public void onClose333() {
		System.out.println("종료되었습니다...");
	}
	
	//클라이언트로부터 메세지가 도착했을 때...
	@OnMessage
	public String onMessage1111(String message) {
		/*
		 	클라이언트로부터 메세지가 도착하면 로그를 출력하고
		 	다시 클라이언트로부터 Echo한다.
		 */
		System.out.println("Client메시지:" + message);
		String echoMsg = "Server메세지:" + message;
		return echoMsg;
	}
	
	//채팅중 에러가 발생했을 때...
	@OnError
	public void onError2222(Throwable e) {
		e.printStackTrace();
	}
}
