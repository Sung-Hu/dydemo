package com.tenco.model;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class TodoDTO {
	private int id;
	private int userId;
	private String title;
	private String description;
	private String dueDate;
	private String completed; // "1", "0"
	
	// completed 를 변환하는 메서드를 만들어 보자.
	public String CompletedToString() {
		return completed.equals("1") ? "true" : "false";
	}
}
