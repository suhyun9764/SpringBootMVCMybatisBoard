package com.mycom.myapp.board.controller;

import com.mycom.myapp.board.dto.BoardParamDto;
import com.mycom.myapp.board.dto.BoardResultDto;
import com.mycom.myapp.board.service.BoardService;
import org.apache.logging.log4j.util.Strings;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/boards")
public class BoardController {
    private final BoardService boardService;

    public BoardController(BoardService boardService) {
        this.boardService = boardService;
    }

    @GetMapping("/list")
    @ResponseBody
    public BoardResultDto listBoard(BoardParamDto boardParamDto){
        BoardResultDto boardResultDto = null;

        if(Strings.isEmpty(boardParamDto.getSearchWord())){
            boardResultDto=boardService.listBoard(boardParamDto);
        }else{
            boardResultDto = boardService.listBoardSearchWord(boardParamDto);
        }

        return boardResultDto;
    }


}
