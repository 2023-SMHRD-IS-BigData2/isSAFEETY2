package Project_Model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@Getter
@NoArgsConstructor
@RequiredArgsConstructor
public class Member {

	@NonNull private String id;
	@NonNull private String pw;
	private String name;
	private String email;
	private String gender;
	private int age;
	
	@NonNull
    public Member(String name, String email, int num) {
        this.name = name;
        this.email = email;
    }
	
}


