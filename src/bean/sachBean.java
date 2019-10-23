package bean;
//refactor code, chi truyen ma sach va ma loai khi chon sach. Khi chon sach, show ra category ma khong can dung ma loai.

public class sachBean {
	private String mSach ;
	private String maLoai ;
	private String tenSach ;
	private String tacGia ;
	private String anh ;
	private Long gia ;

	public sachBean(String mSach,String maLoai, String tenSach, String tacGia, String anh, Long gia) {
		super();
		this.mSach = mSach;
		this.maLoai = maLoai;
		this.tenSach = tenSach;
		this.tacGia = tacGia;
		this.anh = anh;
		this.gia = gia;
	}
	
	public String getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}

	public String getmSach() {
		return mSach;
	}
	public void setmSach(String mSach) {
		this.mSach = mSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	
}
