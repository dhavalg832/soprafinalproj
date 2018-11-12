package com.sopra.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

	private static SessionFactory factory;

	private static void createSessionFactory() {
		if (factory != null) {
			return;
		}
		Configuration cfg = new Configuration().configure();
		ServiceRegistry register = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
		factory = cfg.buildSessionFactory(register);
	}

	public static Session getSessionFactory() {
		createSessionFactory();
		return factory.openSession();
	}

	public static void shutDown() {
		factory.close();
	}
}