package entity;

public class Comment {
	private int idComment;
	private String content;
	private Account customer;
	private int idProduct;

	public Comment(int idComment, String content, Account customer, int idProduct) {
		super();
		this.idComment = idComment;
		this.content = content;
		this.customer = customer;
		this.idProduct = idProduct;
	}

	public Comment() {
		super();
	}

	public int getIdComment() {
		return idComment;
	}

	public void setIdComment(int idComment) {
		this.idComment = idComment;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Account getCustomer() {
		return customer;
	}

	public void setCustomer(Account customer) {
		this.customer = customer;
	}

	public int getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}

	@Override
	public String toString() {
		return "Comment [idComment=" + idComment + ", content=" + content + ", customer=" + customer + ", idProduct="
				+ idProduct + "]";
	}

}
