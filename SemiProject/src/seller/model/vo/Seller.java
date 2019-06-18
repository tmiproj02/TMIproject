package seller.model.vo;

public class Seller {
	private int sno;
	private int mno;
	private String bankname;
	private String banknumber;
	private int income;
	private String careerdate1;
	private String careerdate2;
	private String careerdate3;
	private String career1;
	private String career2;
	private String career3;
	private String certificat1;
	private String certificat2;
	private String certificat3;
	private String introtext;
	private int cpcount;
	private int sevaluation;
	
	public Seller(){
		
	}

	public Seller(int sno, int mno, String bankname, String banknumber, int income, String careerdate1,
			String careerdate2, String careerdate3, String career1, String career2, String career3, String certificat1,
			String certificat2, String certificat3, String introtext, int cpcount, int sevaluation) {
		super();
		this.sno = sno;
		this.mno = mno;
		this.bankname = bankname;
		this.banknumber = banknumber;
		this.income = income;
		this.careerdate1 = careerdate1;
		this.careerdate2 = careerdate2;
		this.careerdate3 = careerdate3;
		this.career1 = career1;
		this.career2 = career2;
		this.career3 = career3;
		this.certificat1 = certificat1;
		this.certificat2 = certificat2;
		this.certificat3 = certificat3;
		this.introtext = introtext;
		this.cpcount = cpcount;
		this.sevaluation = sevaluation;
	}

	public Seller(int sno, int mno, int income) {
		super();
		this.sno = sno;
		this.mno = mno;
		this.income = income;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getBanknumber() {
		return banknumber;
	}

	public void setBanknumber(String banknumber) {
		this.banknumber = banknumber;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public String getCareerdate1() {
		return careerdate1;
	}

	public void setCareerdate1(String careerdate1) {
		this.careerdate1 = careerdate1;
	}

	public String getCareerdate2() {
		return careerdate2;
	}

	public void setCareerdate2(String careerdate2) {
		this.careerdate2 = careerdate2;
	}

	public String getCareerdate3() {
		return careerdate3;
	}

	public void setCareerdate3(String careerdate3) {
		this.careerdate3 = careerdate3;
	}

	public String getCareer1() {
		return career1;
	}

	public void setCareer1(String career1) {
		this.career1 = career1;
	}

	public String getCareer2() {
		return career2;
	}

	public void setCareer2(String career2) {
		this.career2 = career2;
	}

	public String getCareer3() {
		return career3;
	}

	public void setCareer3(String career3) {
		this.career3 = career3;
	}

	public String getCertificat1() {
		return certificat1;
	}

	public void setCertificat1(String certificat1) {
		this.certificat1 = certificat1;
	}

	public String getCertificat2() {
		return certificat2;
	}

	public void setCertificat2(String certificat2) {
		this.certificat2 = certificat2;
	}

	public String getCertificat3() {
		return certificat3;
	}

	public void setCertificat3(String certificat3) {
		this.certificat3 = certificat3;
	}

	public String getIntrotext() {
		return introtext;
	}

	public void setIntrotext(String introtext) {
		this.introtext = introtext;
	}

	public int getCpcount() {
		return cpcount;
	}

	public void setCpcount(int cpcount) {
		this.cpcount = cpcount;
	}

	public int getSevaluation() {
		return sevaluation;
	}

	public void setSevaluation(int sevaluation) {
		this.sevaluation = sevaluation;
	}

	@Override
	public String toString() {
		return "Seller [sno=" + sno + ", mno=" + mno + ", bankname=" + bankname + ", banknumber=" + banknumber
				+ ", income=" + income + ", careerdate1=" + careerdate1 + ", careerdate2=" + careerdate2
				+ ", careerdate3=" + careerdate3 + ", career1=" + career1 + ", career2=" + career2 + ", career3="
				+ career3 + ", certificat1=" + certificat1 + ", certificat2=" + certificat2 + ", certificat3="
				+ certificat3 + ", introtext=" + introtext + ", cpcount=" + cpcount + ", sevaluation=" + sevaluation
				+ "]";
	}

	
	
	
	
	
	
} 
