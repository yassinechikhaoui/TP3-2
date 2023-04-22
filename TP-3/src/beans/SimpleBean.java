package beans;

public class SimpleBean {
	private int compteur;
	public SimpleBean(){
		setCompteur(0);
	}
	public void setCompteur(int thevalue){
		compteur=thevalue;
	}
	
	public int getCompteur(){
		return compteur;
	}
	
	public void increment(){
		compteur++;
	}
	
	
	
	
}
