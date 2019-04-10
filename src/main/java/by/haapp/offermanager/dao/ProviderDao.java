package by.haapp.offermanager.dao;

import by.haapp.offermanager.model.Provider;

import java.util.List;

public interface ProviderDao {

    List<Provider> getAllProviders();
    Provider getProviderById(Integer id);
    void addProvider(Provider provider);
    void removeProvider(Integer id);
    void updateProvider(Provider provider);

}
