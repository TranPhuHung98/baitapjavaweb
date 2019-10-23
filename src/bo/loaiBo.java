package bo;

import java.util.ArrayList;

import bean.loaiBean;
import bean.sachBean;
import dao.loaiDao;

public class loaiBo {
	loaiDao loai =new loaiDao();
	public ArrayList<loaiBean> getLoai() {
		return loai.getLoai();
	}
	
//	public ArrayList<sachBean> getDsSachBangMaLoai(String maLoai){
//		loaiBean loaiB = new loaiBean(maLoai, "abc");
//		return loaiB.getDsSach();
//	}
	public loaiBean getLoaiBangMaLoai(String maLoai) {
		
		return loai.getLoaiBangMaLoai(maLoai);
	}
}
