package comment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class BoardComment implements Serializable{
	
	private static final long serialVersionUID = 10L;
	
	
	private int bno;
	private int cno;
	private Date cdate;
	private String cwriter;
	private String ccontent;
	private int cevaluation;
	public BoardComment() {
		super();
		// TODO Auto-generated constructor stub
	}
		
	public BoardComment(int bno, int cno, String cwriter, String ccontent, int cevaluation) {
		super();
		this.bno = bno;
		this.cno = cno;
		this.cwriter = cwriter;
		this.ccontent = ccontent;
		this.cevaluation = cevaluation;
	}

	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getCwriter() {
		return cwriter;
	}
	public void setCwriter(String cwriter) {
		this.cwriter = cwriter;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public int getCevaluation() {
		return cevaluation;
	}
	public void setCevaluation(int cevaluation) {
		this.cevaluation = cevaluation;
	}
	
	@Override
	public String toString() {
		return "BoardComment [bno=" + bno + ", cno=" + cno + ", cdate=" + cdate + ", cwriter=" + cwriter + ", ccontent="
				+ ccontent + ", cevaluation=" + cevaluation + "]";
	}
	
	
	
}
