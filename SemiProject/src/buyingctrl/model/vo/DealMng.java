package buyingctrl.model.vo;

import java.sql.Date;

public class DealMng {
	
	private int dmcode;
	private int bno;
	private int mno;
	private int sno;
	private String progress;
	private Date dealdate;
	private int deitcount;
	private String completeyn;
	private Date completedate;
	
	
	public DealMng() {
		super();
		// TODO Auto-generated constructor stub
	}


	public DealMng(int dmcode, int bno, int mno, int sno, String progress, Date dealdate, int deitcount,
			String completeyn, Date completedate) {
		super();
		this.dmcode = dmcode;
		this.bno = bno;
		this.mno = mno;
		this.sno = sno;
		this.progress = progress;
		this.dealdate = dealdate;
		this.deitcount = deitcount;
		this.completeyn = completeyn;
		this.completedate = completedate;
	}


	@Override
	public String toString() {
		return "DealMng [dmcode=" + dmcode + ", bno=" + bno + ", mno=" + mno + ", sno=" + sno + ", progress=" + progress
				+ ", dealdate=" + dealdate + ", deitcount=" + deitcount + ", completeyn=" + completeyn
				+ ", completedate=" + completedate + "]";
	}


	public int getDmcode() {
		return dmcode;
	}


	public void setDmcode(int dmcode) {
		this.dmcode = dmcode;
	}


	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
	}


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	public int getSno() {
		return sno;
	}


	public void setSno(int sno) {
		this.sno = sno;
	}


	public String getProgress() {
		return progress;
	}


	public void setProgress(String progress) {
		this.progress = progress;
	}


	public Date getDealdate() {
		return dealdate;
	}


	public void setDealdate(Date dealdate) {
		this.dealdate = dealdate;
	}


	public int getDeitcount() {
		return deitcount;
	}


	public void setDeitcount(int deitcount) {
		this.deitcount = deitcount;
	}


	public String getCompleteyn() {
		return completeyn;
	}


	public void setCompleteyn(String completeyn) {
		this.completeyn = completeyn;
	}


	public Date getCompletedate() {
		return completedate;
	}


	public void setCompletedate(Date completedate) {
		this.completedate = completedate;
	}
	
	
	
	
	
	
	
}