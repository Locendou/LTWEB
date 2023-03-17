package entity;

import java.io.Serializable;
import java.util.List;

public class Order implements Serializable {
	private int idOrder;
	private String dateAdd; // ngay dat
	private String deliveryDate; // ngay mua
	private String StatusPay; // Trinh trang thanh toan
	private Account customer;
	private double endow; // giam gia
	private String status;
	private String address;
	private List<OrderDetail> orderDetails;

	public Order() {
		super();
	}

	public Order(int idOrder, String dateAdd, String deliveryDate, String statusPay, Account customer, double endow,
                 String status, String address, List<OrderDetail> orderDetails) {
		super();
		this.idOrder = idOrder;
		this.dateAdd = dateAdd;
		this.deliveryDate = deliveryDate;
		StatusPay = statusPay;
		this.customer = customer;
		this.endow = endow;
		this.status = status;
		this.address = address;
		this.orderDetails = orderDetails;
	}

	@Override
	public String toString() {
		return "Order [idOrder=" + idOrder + ", dateAdd=" + dateAdd + ", deliveryDate=" + deliveryDate + ", StatusPay="
				+ StatusPay + ", customer=" + customer + ", endow=" + endow + ", status=" + status + ", address="
				+ address + ", orderDetails=" + orderDetails + "]";
	}

	public int getIdBill() {
		return idOrder;
	}

	public int getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public void setIdBill(int idBill) {
		this.idOrder = idBill;
	}

	public String getDateAdd() {
		return dateAdd;
	}

	public void setDateAdd(String dateAdd) {
		this.dateAdd = dateAdd;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public String getStatusPay() {
		return StatusPay;
	}

	public void setStatusPay(String statusPay) {
		StatusPay = statusPay;
	}

	public Account getCustomer() {
		return customer;
	}

	public void setCustomer(Account customer) {
		this.customer = customer;
	}

	public double getEndow() {
		return endow;
	}

	public void setEndow(double endow) {
		this.endow = endow;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
