package com.uplus.productservice.config;

import com.uplus.productservice.domain.phone.Phone;
import org.hibernate.search.mapper.orm.Search;
import org.hibernate.search.mapper.orm.massindexing.MassIndexer;
import org.hibernate.search.mapper.orm.schema.management.SearchSchemaManager;
import org.hibernate.search.mapper.orm.session.SearchSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

@Configuration
@Transactional
public class IndexingConfig {
    @Autowired
    private EntityManager entityManager;

    /**
     * 인덱스 생성
     */
    @Bean
    public void buildSearchIndex() throws InterruptedException {
        SearchSession searchSession = Search.session(entityManager);

        SearchSchemaManager schemaManager = searchSession.schemaManager();
        schemaManager.createIfMissing();

        MassIndexer indexer = searchSession.massIndexer(Phone.class)
                .threadsToLoadObjects(4);
        try {
            indexer.startAndWait();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
