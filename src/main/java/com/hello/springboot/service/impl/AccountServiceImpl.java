package com.hello.springboot.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hello.springboot.dao.AccountMapper;
import com.hello.springboot.entity.Account;
import com.hello.springboot.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by fangzhipeng on 2017/4/20.
 */
@Service
public class AccountServiceImpl  implements AccountService {
    @Autowired
    private AccountMapper accountMapper;

    @Override
    public int add(String name, double money) {
        return accountMapper.add(name, money);
    }
    public int update(String name, double money, int id) {
        return accountMapper.update(name, money, id);
    }
    public int delete(int id) {
        return accountMapper.delete(id);
    }
    public Account findAccount(int id) {
        return accountMapper.findAccount(id);
    }
    public List<Account> findAccountList() {
        return accountMapper.findAccountList();
    }

    @Transactional
    @Override
    public int transfer(Integer to, Integer from, double money) {
        int result = 0;
        // 减去
        accountMapper.update("", accountMapper.findAccount(from).getMoney() - money , from);
        int i = 1/0;
        // 加上
        accountMapper.update("", accountMapper.findAccount(to).getMoney() + money , to);
        result = 1;
        return result;
    }

    @Override
    public PageInfo<Account> queryPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Account> list = accountMapper.findAccountList();
        PageInfo<Account> pageInfo = new PageInfo<Account>(list);
        return pageInfo;
    }

}