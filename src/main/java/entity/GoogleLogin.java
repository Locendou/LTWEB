package entity;

public class GoogleLogin {
	private String idGoogleLogin;
	private String name;
	private String email;
	private Customer customer;
	private String picture;

	public GoogleLogin() {
		super();
	}

	public GoogleLogin(String idGoogleLogin, String name, String email, Customer customer, String picture) {
		super();
		this.idGoogleLogin = idGoogleLogin;
		this.name = name;
		this.email = email;
		this.customer = customer;
		this.picture = picture;
	}

	public String getIdGoogleLogin() {
		return idGoogleLogin;
	}

	public void setIdGoogleLogin(String idGoogleLogin) {
		this.idGoogleLogin = idGoogleLogin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "GoogleLogin [idGoogleLogin=" + idGoogleLogin + ", name=" + name + ", email=" + email + ", customer="
				+ customer + ", picture=" + picture + "]";
	}

}
