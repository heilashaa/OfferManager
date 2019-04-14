package by.haapp.offermanager.service;

import by.haapp.offermanager.dao.ProviderDao;
import by.haapp.offermanager.model.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProviderServiceImpl implements ProviderService {

    @Autowired
    private ProviderDao providerDao;

    @Override
    public List<Provider> getAllProviders() {
        return this.providerDao.getAllProviders();
    }

    @Override
    public Provider getProviderById(Integer id) {
        return this.providerDao.getProviderById(id);
    }

    @Override
    public void addProvider(Provider provider) {
        this.providerDao.addProvider(provider);
    }

    @Override
    public void removeProvider(Integer id) {
        this.providerDao.removeProvider(id);
    }

    @Override
    public void updateProvider(Provider provider) {
        this.providerDao.updateProvider(provider);
    }
}
