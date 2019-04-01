package by.haapp.offermanager.service;

import by.haapp.offermanager.model.Provider;

import java.util.List;

public interface ProviderService {

    public List<Provider> getAllProviders();
    public Provider getProviderById(Integer id);
    public void addProvider(Provider provider);
    public void removeProvider(Integer id);
    public void updateProvider(Provider provider);

}
