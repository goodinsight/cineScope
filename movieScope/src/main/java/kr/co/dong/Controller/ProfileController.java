package kr.co.dong.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DAO.MovieDAO;
import kr.co.dong.DTO.ArticleDTO;
import kr.co.dong.DTO.BoardDTO;
import kr.co.dong.DTO.MovieDTO;
import kr.co.dong.DTO.UserfavoriteDTO;
import kr.co.dong.service.BoardService;
import kr.co.dong.service.MovieDetailService;
import kr.co.dong.service.ProfileService;

@Controller
public class ProfileController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	@Autowired
	private ProfileService profileService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private MovieDetailService movieService;
	@Autowired
	private MovieDAO moviedao;

	@GetMapping("profile")
	public ModelAndView profile(HttpSession session) {
		logger.info("프로필 페이지로 이동");
		ModelAndView mav = new ModelAndView();
		int num = Integer.parseInt(String.valueOf(session.getAttribute("user")));
		if(session == null || session.getAttribute("user") == null) {
	        return new ModelAndView("redirect:/login");
	    }
		mav.addObject("u_id", profileService.userDetail(num).getU_id());
		List<UserfavoriteDTO> favList = profileService.userFav(num);
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		for(UserfavoriteDTO dto : favList) {
			list.add(moviedao.detail(dto.getFK_m_number()));
		}
		System.out.println(list);
		mav.addObject("favList", list);
		mav.setViewName("profile");
		return mav;
	}
	@GetMapping("profile_board")
	public ModelAndView profile_board(HttpSession session) {
		logger.info("프로필 페이지로 이동");
		ModelAndView mav = new ModelAndView();
		int num = Integer.parseInt(String.valueOf(session.getAttribute("user")));
		mav.addObject("u_id", profileService.userDetail(num).getU_id());
		mav.setViewName("profile_board");
		return mav;
	}
	@GetMapping("profile/board1")
	public ModelAndView profileBoard(int FK_u_number) {
		logger.info("보드에서 내가 작성한 글 불러오기");
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardList = boardService.checkAll(FK_u_number);
		mav.addObject("boardList", boardList);
		mav.setViewName("profile");
		return mav;
	}

	/*@GetMapping("profile/userinfo")
	public ModelAndView userinfo(int u_number) {
		logger.info("내 정보 불러오기");
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardList = boardService.(u_number);
		mav.addObject("boardList", boardList);
		mav.setViewName("board");
		return mav;
	}*/
	
	@GetMapping("profile/userfavcheck")
	public ModelAndView userfavcheck(int u_number) {
		logger.info("유저 찜 목록 불러오기");
		ModelAndView mav = new ModelAndView();
		List<UserfavoriteDTO> favList = profileService.userFav(u_number);
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		for(UserfavoriteDTO dto : favList) {
			list.add(moviedao.detail(dto.getFK_m_number()));
		}
		System.out.println(list);
		mav.addObject("favList", list);
		mav.setViewName("profile");
		return mav;
	}
	@GetMapping("profile/userfavdel")
	public ModelAndView userfavdel(int uf_number,int u_number) {
		logger.info("유저 찜 항목 삭제");
		ModelAndView mav = new ModelAndView();
		profileService.userFavDel(uf_number);
		List<UserfavoriteDTO> favList = profileService.userFav(u_number);
		mav.addObject("favList", favList);
		mav.setViewName("profile");
		return mav;
	}
}
