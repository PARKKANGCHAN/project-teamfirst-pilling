package co.first.pilling.user.service.map;

import java.util.List;

import org.springframework.dao.DataAccessException;

import co.first.pilling.user.service.UserVO;

public interface UserMapper {
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
//	int userInsert(UserVO vo); //회원가입
	public void userInsert(UserVO vo) throws DataAccessException;
	int userDelete(UserVO vo); //회원탈퇴
	int userUpdate(UserVO vo); //회원수정
	UserVO userPassword(UserVO vo);
}
