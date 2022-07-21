package com.uplus.productservice.service;

import com.uplus.productservice.domain.phone.Phone;
import lombok.RequiredArgsConstructor;
import org.hibernate.search.engine.search.query.SearchResult;
import org.hibernate.search.mapper.orm.Search;
import org.hibernate.search.mapper.orm.session.SearchSession;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SearchService {
    private final EntityManager entityManager;

    /**
     * keyword로 모바일 상품 검색
     */
    public List<Phone> getSearchResults(String keyword) {
        SearchSession searchSession = Search.session(entityManager);
        SearchResult<Phone> result = searchSession.search(Phone.class)
                .where(f -> f.match()
                        .fields("code")
                        .fields("name")
                        .matching("*"+keyword+"*"))
                .fetch(10);

        long totalHitCount = result.total().hitCount();
        List<Phone> hits = result.hits();

        return hits;
    }
}
