package entity;

public class GoogleLogin {
	private String id;
	private String name;
	private String email;
	private boolean varified_email;
	private String picture;

	public GoogleLogin(String id, String name, String email, boolean varified_email, String picture) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.varified_email = varified_email;
		this.picture = picture;
	}

	public GoogleLogin() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public boolean isVarified_email() {
		return varified_email;
	}

	public void setVarified_email(boolean varified_email) {
		this.varified_email = varified_email;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "CustomerGoogle [id=" + id + ", name=" + name + ", email=" + email + ", varified_email=" + varified_email
				+ ", picture=" + picture + "]";
	}

}
