package com.hello.springboot.web;

import com.hello.springboot.entity.Account;
import com.hello.springboot.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by  on 2017/4/20.
 */
@RestController
@RequestMapping("/account")
public class AccountController {

    @Autowired
    AccountService accountService;

    /**
     * 查询所有账户
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Account> getAccounts() {
        return accountService.findAccountList();
    }

    /**
     * 根据id查询账户
     * @param id
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Account getAccountById(@PathVariable("id") int id) {
        return accountService.findAccount(id);
    }

    /**
     * 根据id 更新账户
     * @param id
     * @param name
     * @param money
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public String updateAccount(@PathVariable("id") int id, @RequestParam(value = "name", required = true) String name,
                                @RequestParam(value = "money", required = true) double money) {
        int t= accountService.update(name,money,id);
        if(t==1) {
            return "success";
        }else {
            return "fail";
        }

    }

    /**
     * 根据id 删除账户
     * @param id
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable(value = "id")int id) {
        int t= accountService.delete(id);
        if(t==1) {
            return "success";
        }else {
            return "fail";
        }

    }

    /**
     * 添加账户
     * @param name
     * @param money
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.POST)
    public String postAccount(@RequestParam(value = "name") String name,
                              @RequestParam(value = "money") double money) {

       int t= accountService.add(name,money);
       if(t==1) {
           return "success";
       }else {
           return "fail";
       }

    }

    /**
     * 转账
     * @param to
     * @param from
     * @param money
     * @return
     */
    @RequestMapping(value = "transfer", method = RequestMethod.POST)
    public String transfer(@RequestParam(value = "to") Integer to,
                           @RequestParam(value = "from") Integer from,
                           @RequestParam(value = "money") Double money){
        int transfer = accountService.transfer(to, from, money);
        if(transfer==1) {
            return "success";
        }else {
            return "fail";
        }
    }



}