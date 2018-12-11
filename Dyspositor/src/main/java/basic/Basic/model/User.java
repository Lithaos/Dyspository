package basic.Basic.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue
	private long id;

	@Size(min = 3, message = "Musisz podać email!")
	@Email(message = "Musisz podać poprawny email")
	@Column(unique = true)
	private String email;

	@Size(min = 3, message = "Hasło musi mieć conajmniej 3 znaki")
	private String password;

	@Size(min = 3, message = "Musisz podać imię")
	private String name;

	@Size(min = 3, message = "Musisz podać nazwisko")
	private String surname;

	private String role;

	@OneToOne
	private Offert offert;

	public Offert getOffert() {
		return offert;
	}

	public void setOffert(Offert offert) {
		this.offert = offert;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
