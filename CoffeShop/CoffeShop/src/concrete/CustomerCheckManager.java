package concrete;

import abstracts.CustomerCheckService;
import entities.Customer;

public class CustomerCheckManager  implements CustomerCheckService {

	@Override
	public boolean validate(Customer customer) {
	
		System.out.println("User verified");
		return true;
	}

}




