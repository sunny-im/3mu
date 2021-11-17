package dao;

public class MemberObj {
	private String id, password, name, gender, birth, email, phone, address, quiz, answer, regiday, admin;

	public MemberObj(String id, String password, String name, String gender, String birth, String email, String phone, String address, String quiz, String answer, String regiday, String admin) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.quiz = quiz;
		this.answer = answer;
		this.regiday = regiday;
		this.admin = admin;
	}
	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}

	public String getBirth() {
		return birth;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public String getQuiz() {
		return quiz;
	}

	public String getAnswer() {
		return answer;
	}

	public String getRegiday() {
		return regiday;
	}

	public String getAdmin() {
		return admin;
	}
	
	
}