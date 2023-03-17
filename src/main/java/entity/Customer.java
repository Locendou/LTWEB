package entity;

import java.sql.Date;

public class Customer {
	private int idCustomer;
	private String userName;
	private String passWord;
	private String name;
	private String address;
	private String email;
	private String phoneNumber;
	private int id_role_member;
	private boolean isDelete;
	private boolean isActive;
	private Date create_Date;
	private String image;

	public Customer() {
		super();
	}

	public Customer(int idCustomer, String userName, String passWord, String name, String address, String email,
			String phoneNumber, int id_role_member, boolean isDelete, boolean isActive, Date create_Date,
			String image) {
		super();
		this.idCustomer = idCustomer;
		this.userName = userName;
		this.passWord = passWord;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.id_role_member = id_role_member;
		this.isDelete = isDelete;
		this.isActive = isActive;
		this.create_Date = create_Date;
		this.image = image;
	}

	public Customer(int idCustomer, String userName, String passWord, String name, String address, String email,
			String phoneNumber, int id_role_member) {
		super();
		this.idCustomer = idCustomer;
		this.userName = userName;
		this.passWord = passWord;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.id_role_member = id_role_member;
	}

	public Customer(String userName, String passWord, String name, String address, String email, String phoneNumber) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "Customer [idCustomer=" + idCustomer + ", userName=" + userName + ", passWord=" + passWord + ", name="
				+ name + ", address=" + address + ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", id_role_member=" + id_role_member + ", isDelete=" + isDelete + ", isActive=" + isActive
				+ ", create_Date=" + create_Date + ", image=" + image + "]";
	}

	public int getIdCustomer() {
		return idCustomer;
	}

	public void setIdCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getId_role_member() {
		return id_role_member;
	}

	public void setId_role_member(int id_role_member) {
		this.id_role_member = id_role_member;
	}

}