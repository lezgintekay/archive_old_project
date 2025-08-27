import abstracts.BaseCustomerManager;
	import adapters.MernisServiceAdapter;
	import concrete.NeroCustomerManager;
	import concrete.StarbucksCustomerManager;
	import entities.Customer;

	public class Main {
		public static void main(String[] args) {

			Customer customer = new Customer(1, "LEZGİN ", "TEKAY", 1968, "11111111111111");
			BaseCustomerManager manager = new StarbucksCustomerManager(new MernisServiceAdapter());
			manager.save(customer);
			
		}
	}

