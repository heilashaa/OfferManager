package by.haapp.offermanager.dao;

import by.haapp.offermanager.model.Provider;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProviderDaoImpl extends AbstractDao implements ProviderDao {

    @SuppressWarnings("unchecked")
    @Override
    public List<Provider> getAllProviders() {
        return (List<Provider>) getSession().createQuery("from Provider").list();
    }

    @Override
    public Provider getProviderById(Integer id) {
        Provider provider = (Provider) getSession().get(Provider.class, id);
        return provider;
    }

    @Override
    public void addProvider(Provider provider) {
        getSession().persist(provider);
    }

    @Override
    public void removeProvider(Integer id) {
        Provider provider = (Provider) getSession().load(Provider.class, id);
        if(null != provider){
            getSession().delete(provider);
        }
    }

    @Override
    public void updateProvider(Provider provider) {
        getSession().update(provider);
    }
}
