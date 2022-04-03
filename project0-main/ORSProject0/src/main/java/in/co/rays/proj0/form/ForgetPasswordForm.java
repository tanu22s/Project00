package in.co.rays.proj0.form;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

/**
 * Contains Forget Password form elements and their declarative input
 * validations.
 * 
 * @author Tanvi Singh
 */

@Component
public class ForgetPasswordForm extends BaseForm {
	
	@NotEmpty
	@Email
	private String login;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

}
