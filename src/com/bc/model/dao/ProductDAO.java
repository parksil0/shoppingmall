package com.bc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.DBService;
import com.bc.vo.O_cartlistVO;
import com.bc.vo.P_boardVO;
import com.bc.vo.P_inquiryVO;
import com.bc.vo.P_optionVO;
import com.bc.vo.P_reviewVO;

public class ProductDAO {

	//�Խñ� ��ȸ
	public static P_boardVO selectOne(String p_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		P_boardVO vo = ss.selectOne("SHOP.pview", p_idx);
		ss.close();
		return vo;
	}

	//Q&A ��� ����
	public static List<P_inquiryVO> showInquiry(String p_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		List<P_inquiryVO> list = ss.selectList("SHOP.showInquiry", p_idx);
		ss.close();
		return list;
	}
	
	//���� ��� ����
	public static List<P_reviewVO> showReview(String p_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		List<P_reviewVO> list = ss.selectList("SHOP.showReview", p_idx);
		ss.close();
		return list;
	}
	
	//��ǰ �ɼ� ����
	public static List<P_optionVO> showOption(String p_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		List<P_optionVO> list = ss.selectList("SHOP.showOption", p_idx);
		ss.close();
		return list;
	}
	
	//��ٱ��Ͽ� ���
	public static int insertCart(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("SHOP.insertCart", map);
		ss.close();
		return result;
	}
	
	//��ٱ��� ����Ʈ �ҷ�����
	public static List<O_cartlistVO> showCartlist(String userid) {
		SqlSession ss = DBService.getFactory().openSession();
		List<O_cartlistVO> list = ss.selectList("SHOP.showCartlist", userid);
		ss.close();
		return list;
	}
	
	//��ٱ��Ͽ� ������ ��ǰ�� �ִ��� Ȯ���ϱ�
	public static int isDuplicate(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.selectOne("SHOP.chkDuplicate", map);
		ss.close();
		return result;
	}

	public static int editQuant(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("SHOP.editQuant", map);
		ss.close();
		return result;
	}
	
	public static int deleteAll(String userid) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("SHOP.deleteAll", userid);
		ss.close();
		return result;
	}
	
	public static int loginChk(Map<String, String>map) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.selectOne("SHOP.loginChk", map);
		ss.close();
		return result;
	}
	
	public static int writeQna(Map<String, String>map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("SHOP.writeQna", map);
		ss.close();
		return result;
	}
	
	public static int chkBuy(Map<String, String>map) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.selectOne("SHOP.chkBuy", map);
		ss.close();
		return result;
	}
	
	public static int writeReview(Map<String, String>map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("SHOP.writeReview", map);
		ss.close();
		return result;
	}
	
	public static int delCartlist(Map<String, String>map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("SHOP.delCartlist", map);
		ss.close();
		return result;
	}

}
