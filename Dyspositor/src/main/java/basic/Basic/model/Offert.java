package basic.Basic.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

import org.springframework.security.core.Transient;

@Entity
@Transient
public class Offert {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@OneToOne
	@MapsId
	private User user;

	@OneToOne(cascade = { CascadeType.ALL })
	private AddresPoint startPoint;

	@OneToOne(cascade = { CascadeType.ALL })
	private AddresPoint endPoint;

	private float salary;

	private String description;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public AddresPoint getStartPoint() {
		return startPoint;
	}

	public void setStartPoint(AddresPoint startPoint) {
		this.startPoint = startPoint;
	}

	public AddresPoint getEndPoint() {
		return endPoint;
	}

	public void setEndPoint(AddresPoint endPoint) {
		this.endPoint = endPoint;
	}

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getId() {
		return id;
	}

}
