package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {
    private int bno;
    private String book_name;
    private String publisher;
    private String author;
    private int price;
    private String etc;
    private int cno;
}
