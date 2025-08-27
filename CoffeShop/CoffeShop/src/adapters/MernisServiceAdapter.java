package adapters;

import java.rmi.RemoteException;
import java.util.Locale;

import abstracts.CustomerCheckService;
import entities.Customer;
import tr.gov.nvi.tckimlik.WS.KPSPublicSoapProxy;

public class MernisServiceAdapter implements CustomerCheckService {

	@Override
	public boolean validate(Customer customer) {

		KPSPublicSoapProxy client = new KPSPublicSoapProxy();
		boolean result = false;
		try {
			result = client.TCKimlikNoDogrula(Long.parseLong(customer.getNationalityID()),
					customer.getFirstName().toUpperCase(new Locale("tr")),
					customer.getLastName().toUpperCase(new Locale("tr")), customer.getDateOfBirth());
				
		} catch (RemoteException e) {

			e.printStackTrace();
		}
		return result;

	}

}