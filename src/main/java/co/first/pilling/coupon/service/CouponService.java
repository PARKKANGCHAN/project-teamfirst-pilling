package co.first.pilling.coupon.service;

import java.util.List;

public interface CouponService {
	List<CouponVO> couponSelectList(int userNo); // 해당하는 유저가 가진 쿠폰 전체조회

	CouponVO couponSelect(CouponVO vo); // 쿠폰 상세조회

	int couponInsert(CouponVO vo); // 쿠폰 발급

	int couponDelete(CouponVO vo); // 쿠폰 삭제
	
	int couponCount(CouponVO vo); // 쿠폰 개수 구하기
}