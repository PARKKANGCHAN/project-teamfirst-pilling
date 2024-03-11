package co.first.pilling.survey.map;

import java.util.List;

import co.first.pilling.survey.service.SurveyVO;

public interface SurveyMapper {
	
	// 설문조사 응답 결과로 매핑한 제품의 목록을 담을 때 사용
	List<SurveyVO> responseProductList();

	// 설문조사 결과 입력(등록)
	int surveyResultInput(SurveyVO vo);
	
	// 제품과 키워드를 매핑하기 위한 인터페이스
	List<SurveyVO> productKeywordMapping();
}
