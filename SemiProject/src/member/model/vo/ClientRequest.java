package member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ClientRequest implements Serializable{
		
	public ClientRequest() {
	
	}
	
	
		private String rTitle;
		private String rContent;
		private String rNickName;
		private Date rDate;
		
		
		
		
		public ClientRequest(String rTitle, String rContent, String rNickName, Date rDate) {
			super();
			this.rTitle = rTitle;
			this.rContent = rContent;
			this.rNickName = rNickName;
			this.rDate = rDate;
		}
		
		
		
		
		@Override
		public String toString() {
			return "ClientRequest [rTitle=" + rTitle + ", rContent=" + rContent + ", rNickName=" + rNickName
					+ ", rDate=" + rDate + "]";
		}




		public String getrTitle() {
			return rTitle;
		}
		public void setrTitle(String rTitle) {
			this.rTitle = rTitle;
		}
		public String getrContent() {
			return rContent;
		}
		public void setrContent(String rContent) {
			this.rContent = rContent;
		}
		public String getrNickName() {
			return rNickName;
		}
		public void setrNickName(String rNickName) {
			this.rNickName = rNickName;
		}
		public Date getrDate() {
			return rDate;
		}
		public void setrDate(Date rDate) {
			this.rDate = rDate;
		}
	
		
		
		
	
	
}
