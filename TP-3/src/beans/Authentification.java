package beans;

public class Authentification {
	
	    private String login;
	    private String password;
	    
	    // constructeur
	    public Authentification() {
	        this.login = "";
	        this.password = "";
	    }
	    
	    
	    
	    public String getLogin() {
			return login;
		}



		public void setLogin(String login) {
			this.login = login;
		}



		public String getPassword() {
			return password;
		}



		public void setPassword(String password) {
			this.password = password;
		}



		// méthode valide
	    public boolean valide() {
	        String userLogin = "USER1";
	        String userPassword = "PASS1";
	        return login.equals(userLogin) && password.equals(userPassword);
	    }
	}



