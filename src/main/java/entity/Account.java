package entity;

import java.sql.Date;

public class Account {
	private int id;
	private String accountName;
	private String password;
	private String fullName;
	private String address;
	private String email;
	private String phone;
	private int idRoleMember;
	private boolean isDelete;
	private boolean isActive;
	private Date createAt;
	private String image;
	private Date updateAt;
	private Date deleteAt;
	private int type;
	private String idOther;
	private String currentPassword;
	public Account() {
		super();
	}

	public Account(int id, String accountName, String password, String fullName, String address, String email, String phone, int idRoleMember, boolean isDelete, boolean isActive, Date createAt, String image, Date updateAt, Date deleteAt, int type, String idOther, String currentPassword) {
		this.id = id;
		this.accountName = accountName;
		this.password = password;
		this.fullName = fullName;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.idRoleMember = idRoleMember;
		this.isDelete = isDelete;
		this.isActive = isActive;
		this.createAt = createAt;
		this.image = image;
		this.updateAt = updateAt;
		this.deleteAt = deleteAt;
		this.type = type;
		this.idOther = idOther;
		this.currentPassword = currentPassword;
	}

	public Account(int id, String accountName, String password, String fullName, String address, String email, String phone, int idRoleMember) {
		this.id = id;
		this.accountName = accountName;
		this.password = password;
		this.fullName = fullName;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.idRoleMember = idRoleMember;
	}

	public Account(String accountName, String password, String fullName, String address, String email, String phone) {

		this.accountName = accountName;
		this.password = password;
		this.fullName = fullName;
		this.address = address;
		this.email = email;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public String getAccountName() {
		return accountName;
	}

	public String getPassword() {
		return password;
	}

	public String getFullName() {
		return fullName;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public int getIdRoleMember() {
		return idRoleMember;
	}

	public boolean isDelete() {
		return isDelete;
	}

	public boolean isActive() {
		return isActive;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public String getImage() {
		return image;
	}

	public Date getUpdateAt() {
		return updateAt;
	}

	public Date getDeleteAt() {
		return deleteAt;
	}

	public int getType() {
		return type;
	}

	public String getIdOther() {
		return idOther;
	}

	public String getCurrentPassword() {
		return currentPassword;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setIdRoleMember(int idRoleMember) {
		this.idRoleMember = idRoleMember;
	}

	public void setDelete(boolean delete) {
		isDelete = delete;
	}

	public void setActive(boolean active) {
		isActive = active;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}

	public void setDeleteAt(Date deleteAt) {
		this.deleteAt = deleteAt;
	}

	public void setType(int type) {
		this.type = type;
	}

	public void setIdOther(String idOther) {
		this.idOther = idOther;
	}

	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}

	@Override
	public String toString() {
		return "Account{" +
				"id=" + id +
				", accountName='" + accountName + '\'' +
				", password='" + password + '\'' +
				", fullName='" + fullName + '\'' +
				", address='" + address + '\'' +
				", email='" + email + '\'' +
				", phone='" + phone + '\'' +
				", idRoleMember=" + idRoleMember +
				", isDelete=" + isDelete +
				", isActive=" + isActive +
				", createAt=" + createAt +
				", image='" + image + '\'' +
				", updateAt=" + updateAt +
				", deleteAt=" + deleteAt +
				", type=" + type +
				", idOther='" + idOther + '\'' +
				", currentPassword='" + currentPassword + '\'' +
				'}';
	}
}