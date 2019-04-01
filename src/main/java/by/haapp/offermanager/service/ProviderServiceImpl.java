package by.haapp.offermanager.service;

import by.haapp.offermanager.dao.ProviderDao;
import by.haapp.offermanager.model.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProviderServiceImpl implements ProviderService {

    @Autowired
    private ProviderDao providerDao;

    @Override
    public List<Provider> getAllProviders() {
        return null;
    }

    @Override
    public Provider getProviderById(Integer id) {
        return null;
    }

    @Override
    public void addProvider(Provider provider) {

    }

    @Override
    public void removeProvider(Integer id) {

    }

    @Override
    public void updateProvider(Provider provider) {

    }
}
