package by.haapp.offermanager.dao;

import by.haapp.offermanager.model.Provider;

import java.util.List;

public interface ProviderDao {

    public List<Provider> getAllProviders();
    public Provider getProviderById(Integer id);
    public void addProvider(Provider provider);
    public void removeProvider(Integer id);
    public void updateProvider(Provider provider);

}
