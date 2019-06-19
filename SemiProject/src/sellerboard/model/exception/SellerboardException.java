package sellerboard.model.exception;

public class SellerboardException extends Exception{
	// 사용자 정의 예외
		// 예외가 발생할 경우 개발자나 사용자가 알기 쉬운 문장을 미리 등록하여 에러 처리를 보다 쉽게 하기 위한 용도로 사용하는 클래스
		public SellerboardException() {
			super();
		}
		
		public SellerboardException(String msg) {
			super(msg);
		}
}
