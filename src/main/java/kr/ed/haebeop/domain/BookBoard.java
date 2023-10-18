package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookBoard {
    private int postNo;
    private String title;
    private String content;
    private String regdate;
    private int visited;
}
