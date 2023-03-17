package entity;

public class View {
	private int idView;
	private int idProduct;
	private String status;
	private Account customer;
	public View(int idView, int idProduct, String status, Account customer) {
		super();
		this.idView = idView;
		this.idProduct = idProduct;
		this.status = status;
		this.customer = customer;
	}
	public View() {
		super();
	}
	@Override
	public String toString() {
		return "View [idView=" + idView + ", idProduct=" + idProduct + ", status=" + status + ", customer=" + customer
				+ "]";
	}
	public int getIdView() {
		return idView;
	}
	public void setIdView(int idView) {
		this.idView = idView;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Account getCustomer() {
		return customer;
	}
	public void setCustomer(Account customer) {
		this.customer = customer;
	}
	
}
