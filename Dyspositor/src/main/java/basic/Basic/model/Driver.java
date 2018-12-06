package basic.Basic.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Driver {

	@Id
	@GeneratedValue
	private long id;

	private String mark;

	private String model;

	private long capacity;

	@OneToOne
	@JoinColumn(name = "id")
	private User user;

	public Driver(String mark, String model, long capacity) {
		super();
		this.mark = mark;
		this.model = model;
		this.capacity = capacity;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public long getCapacity() {
		return capacity;
	}

	public void setCapacity(long capacity) {
		this.capacity = capacity;
	}

	public long getId() {
		return id;
	}

}
