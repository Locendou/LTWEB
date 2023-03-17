package entity;

import java.io.Serializable;
import java.util.List;

public class Product implements Serializable {
    private int idProduct;
    private String nameProduct;
    private double listPrice;
    private String description; // mo ta
    private List<View> views;
    private List<Star> stars;
    private List<Comment> comments;
    private int idSupplier;
    private int idProducer;
    private int idCategory;
    private Supplier supplier; // nha cung cap
    private Producer producer; // nha san suat
    private Category category; // phan loai
    private List<ImageProduct> imageProducts;
    private String isActive;
    private String isDelete;
    private List<SizeProduct> productSizes;
    private List<ColorProduct> productColors;
    private int discount;
    private double discountPrice;

    public Product() {
    }

    public Product(int idProduct, String nameProduct, double listPrice, String description, List<View> views, List<Star> stars, List<Comment> comments, int idSupplier, int idProducer, int idCategory, Supplier supplier, Producer producer, Category category, List<ImageProduct> imageProducts, String isActive, String isDelete, List<SizeProduct> productSizes, List<ColorProduct> productColors, int discount, double discountPrice) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.listPrice = listPrice;
        this.description = description;
        this.views = views;
        this.stars = stars;
        this.comments = comments;
        this.idSupplier = idSupplier;
        this.idProducer = idProducer;
        this.idCategory = idCategory;
        this.supplier = supplier;
        this.producer = producer;
        this.category = category;
        this.imageProducts = imageProducts;
        this.isActive = isActive;
        this.isDelete = isDelete;
        this.productSizes = productSizes;
        this.productColors = productColors;
        this.discount = discount;
        this.discountPrice = discountPrice;
    }

    public Product(int idProduct, String nameProduct, double listPrice, List<ImageProduct> imageProducts, int discount, double discountPrice) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.listPrice = listPrice;
        this.imageProducts = imageProducts;
        this.discount = discount;
        this.discountPrice = discountPrice;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public double getListPrice() {
        return listPrice;
    }

    public String getDescription() {
        return description;
    }

    public List<View> getViews() {
        return views;
    }

    public List<Star> getStars() {
        return stars;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public int getIdSupplier() {
        return idSupplier;
    }

    public int getIdProducer() {
        return idProducer;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public Producer getProducer() {
        return producer;
    }

    public Category getCategory() {
        return category;
    }

    public List<ImageProduct> getImageProducts() {
        return imageProducts;
    }

    public String getIsActive() {
        return isActive;
    }

    public String getIsDelete() {
        return isDelete;
    }

    public List<SizeProduct> getProductSizes() {
        return productSizes;
    }

    public List<ColorProduct> getProductColors() {
        return productColors;
    }

    public int getDiscount() {
        return discount;
    }

    public double getDiscountPrice() {
        return discountPrice;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public void setListPrice(double listPrice) {
        this.listPrice = listPrice;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setViews(List<View> views) {
        this.views = views;
    }

    public void setStars(List<Star> stars) {
        this.stars = stars;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public void setIdSupplier(int idSupplier) {
        this.idSupplier = idSupplier;
    }

    public void setIdProducer(int idProducer) {
        this.idProducer = idProducer;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public void setProducer(Producer producer) {
        this.producer = producer;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public void setImageProducts(List<ImageProduct> imageProducts) {
        this.imageProducts = imageProducts;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }

    public void setIsDelete(String isDelete) {
        this.isDelete = isDelete;
    }

    public void setProductSizes(List<SizeProduct> productSizes) {
        this.productSizes = productSizes;
    }

    public void setProductColors(List<ColorProduct> productColors) {
        this.productColors = productColors;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public void setDiscountPrice(double discountPrice) {
        this.discountPrice = discountPrice;
    }

    @Override
    public String toString() {
        return "Product{" +
                "idProduct=" + idProduct +
                ", nameProduct='" + nameProduct + '\'' +
                ", listPrice=" + listPrice +
                ", description='" + description + '\'' +
                ", views=" + views +
                ", stars=" + stars +
                ", comments=" + comments +
                ", idSupplier=" + idSupplier +
                ", idProducer=" + idProducer +
                ", idCategory=" + idCategory +
                ", supplier=" + supplier +
                ", producer=" + producer +
                ", category=" + category +
                ", imageProducts=" + imageProducts +
                ", isActive='" + isActive + '\'' +
                ", isDelete='" + isDelete + '\'' +
                ", productSizes=" + productSizes +
                ", productColors=" + productColors +
                ", discount=" + discount +
                ", discountPrice=" + discountPrice +
                '}';
    }
}