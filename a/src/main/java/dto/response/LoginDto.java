package dto.response;


import lombok.Data;

@Data
public class LoginDto {
	
	private Integer id;
	private String password;
	private String rememberId;
	
}
