package Project_Model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

// 모든 생성자
@AllArgsConstructor
// 값을 불러옴
@Getter
// 기본 생성자
@NoArgsConstructor
// final 필드에 대한 생성자
@RequiredArgsConstructor
public class Member {

	// null로 넘어온 경우, NullPointException 예외를 해준다.
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