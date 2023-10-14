package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Enroll {
    private int eno;
    private int cno;
    private String id;
    private boolean complete;
    private boolean book;
    private int enroll_price;
    private String book_name;
}
