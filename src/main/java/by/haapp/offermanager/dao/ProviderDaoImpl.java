package by.haapp.offermanager.dao;

import by.haapp.offermanager.model.Provider;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProviderDaoImpl implements ProviderDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Provider> getAllProviders() {
        Session session = sessionFactory.getCurrentSession();
        List<Provider> providersList = session.createQuery("from Provider").list();
        return providersList;
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
