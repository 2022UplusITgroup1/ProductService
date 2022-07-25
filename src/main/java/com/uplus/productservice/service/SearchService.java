package com.uplus.productservice.service;

import com.uplus.productservice.domain.phone.Phone;
import lombok.RequiredArgsConstructor;
import org.hibernate.search.engine.search.query.SearchResult;
import org.hibernate.search.mapper.orm.Search;
import org.hibernate.search.mapper.orm.session.SearchSession;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
public class SearchService {
    private final EntityManager entityManager;

    /**
     * keyword로 모바일 상품 검색
     */
    public List<Phone> getSearchResults(String keyword) {
        SearchSession searchSession = Search.session(entityManager);
        SearchResult<Phone> results = searchSession.search(Phone.class)
                .where(f -> f.match()
                        .fields("code")
                        .fields("name")
                        .fields("color")
                        .matching("*"+keyword+"*"))
                .fetch(10);

        List<Phone> phoneSearchResult = results.hits();
        // return phoneSearchResult;

        // 검색어 범위 좁히기 -> stream filter사용
        Stream<Phone> filterWithName = phoneSearchResult.stream()
                      .filter(phone -> phone.getName().contains(keyword));

        Stream<Phone> filterWithCode = phoneSearchResult.stream()
                      .filter(phone -> phone.getCode().contains(keyword));

        Stream<Phone> filterWithColor = phoneSearchResult.stream()
                      .filter(phone -> phone.getColor().contains(keyword));

        Stream<Phone> NameAndCode = Stream.concat(filterWithName, filterWithCode);

        return Stream.concat(NameAndCode, filterWithColor)
              .distinct()
              .collect(Collectors.toList());
    }
}
