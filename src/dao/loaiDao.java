package dao;

import java.util.ArrayList;

import bean.loaiBean;
import bean.sachBean;

public class loaiDao {
	public ArrayList<loaiBean> getLoai() {
		ArrayList<loaiBean> dsLoai = new ArrayList<loaiBean>();
//		ArrayList<sachBean> dsSach = new ArrayList<sachBean>();
		dsLoai.add(new loaiBean("l1","sach giao khoa"));
		dsLoai.add(new loaiBean("l2","trinh tham"));
		dsLoai.add(new loaiBean("l3","tieu thuyet"));
		dsLoai.add(new loaiBean("l4","khoa hoc - vien tuong"));
		dsLoai.add(new loaiBean("l5","sach thieu nhi"));
		return dsLoai;
	}
	
	public loaiBean getLoaiBangMaLoai(String maLoai) {
		ArrayList<loaiBean> loaiBean = getLoai();
		loaiBean loaiBeanDangTimKiem = new loaiBean("", "");
		for(loaiBean l: loaiBean) {
			if(l.getMaLoai().equals(maLoai)) {
				loaiBeanDangTimKiem = l;
			}
		}
		return loaiBeanDangTimKiem;
		
	}
}
