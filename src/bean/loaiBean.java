package bean;

import java.util.ArrayList;

import dao.sachDao;

public class loaiBean {
	String maLoai;
	String tenLoai;
	public loaiBean(String maLoai, String tenLoai) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
	}
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	public ArrayList<sachBean> getDsSach() {
		sachDao sach = new sachDao();
		
		ArrayList<sachBean> sachBeanCungLoai = new ArrayList<sachBean>();
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaa");
		for(sachBean sachBeantemp : sach.getSach()) {
			System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbb");
//			System.out.println(sachBeantemp.getMaLoai());
			System.out.println(this.getMaLoai());
			if(sachBeantemp.getMaLoai().equals(this.getMaLoai())) {
				
				sachBeanCungLoai.add(sachBeantemp);
				
			}
		}
		return sachBeanCungLoai;
	}
	
	
}
