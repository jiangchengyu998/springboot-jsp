package com.hello.springboot.service;

import com.hello.springboot.entity.Account;

import java.util.List;

/**
 * Created by  on 2017/4/20.
 */
public interface AccountService {

    public int add(String name, double money);
    public int update(String name, double money, int id);
    public int delete(int id);
    public Account findAccount(int id);
    public List<Account> findAccountList();

    int transfer(Integer to, Integer from, double money);
}