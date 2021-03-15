package com.miw.farmersborrowbench.repositories;


import com.miw.farmersborrowbench.beans.Account;
import com.miw.farmersborrowbench.beans.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    @Query ("select u from User u where u.bsn = :bsn")
    User searchByBsn(@Param("bsn") String bsn);

    @Query("select u from User u where u.username = :name")
    public User searchByName(@Param("name") String username);

    User findUserByLnameContains(String lname);

    User findByLnameEqualsAndAccountsContains(String lname, Account account);
}
