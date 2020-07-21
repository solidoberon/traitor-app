package spring.example.repo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MOCK_DATA")
public class PersonDB {
    @Id
    @GeneratedValue
	private int id;
	private String first_name;
	private String last_name;
	private String street;
	private String university;
	private String iban;
	
	/*
	 * protected PersonDB() {}
	 * 
	 * public PersonDB(int id, String first_name, String last_name, String street,
	 * String university, String iban) { super(); this.id = id; this.first_name =
	 * first_name; this.last_name = last_name; this.street = street; this.university
	 * = university; this.iban = iban; }
	 */

    public long getId() {
    	return id;
    }

	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getIban() {
		return iban;
	}
	public void setIban(String iban) {
		this.iban = iban;
	}
	
//	@Override
//    public String toString() {
//        return "PersonDB [id=" + id + ", firstName=" + first_name + ", lastName=" + last_name + ", street=" + street + ", university=" + university + ", iban=" + iban 
//       + "]";
//    }
}
