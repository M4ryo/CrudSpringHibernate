/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Emisor;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Desarrollo
 */
public class EmisorModel {


    public List<Emisor> getAll() {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Emisor> lst = new ArrayList<Emisor>();
        try {
            ss.beginTransaction();
            lst = ss.createCriteria(Emisor.class).list();
            ss.getTransaction().commit();
            System.out.println("model.EmisorModel.getAll()");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public List<Emisor> dbAction(String action, Emisor emisor, int id) {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Emisor> lst = new ArrayList<Emisor>();
        try {
            ss.beginTransaction();
            switch (action) {
                case "add":
                    ss.save(emisor);
                    break;
                case "delete":
                    ss.delete(emisor);
                    break;
                case "update":
                    ss.update(emisor);
                    break;
                case "get":
                    emisor = (Emisor) ss.get(Emisor.class, id);
                    lst.add(emisor);
                    break;
                default:
                    lst = ss.createCriteria(Emisor.class).list();
                    break;
            }
            ss.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            ss.getTransaction().rollback();
        }
        return lst;
    }
}
