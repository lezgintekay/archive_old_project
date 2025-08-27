package concrete;

    import abstracts.BaseCustomerManager;
	import abstracts.CustomerCheckService;
	import entities.Customer;

	public class StarbucksCustomerManager extends BaseCustomerManager {

		private CustomerCheckService checkservice;

		public StarbucksCustomerManager(CustomerCheckService checkservice) {
			super();
			this.checkservice = checkservice;
		}

		@Override
		public void save(Customer customer) {

			if (checkservice.validate(customer)) {
				System.out.println("Login successful with Mernis");
				super.save(customer);
				
			}else {
				
				System.out.println("Person could not be verified");
			}
			
		}
	}
	
	
	
	
	

