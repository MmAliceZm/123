package beans;

public class Cart {
	private int cartid;
    private Iphones iphones;//实体类注意大小写
    private int id;
    private int quantity;
    
    
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Iphones getIphones() {
		return iphones;
	}
	public void setIphones(Iphones iphones) {
		this.iphones = iphones;
	}
}
