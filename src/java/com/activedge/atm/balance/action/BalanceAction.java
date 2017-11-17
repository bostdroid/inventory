/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activedge.atm.balance.action;

import com.activedge.atm.balance.data.BalanceData;
import com.activedge.atm.balance.persistence.BalanceDAO;
import com.activedge.atm.web.common.BaseAction;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author postgres
 */
public class BalanceAction extends BaseAction {

    
    /**
     * initialize the table
     * @return 
     */
    
    @Override
    public String execute(){
        setBalance(new BalanceData());
        return SUCCESS;
    }
    
    /**
     * finds All balances by criteria
     * @return 
     * @throws java.sql.SQLException
     */
    public String findBalancesByCriteria() throws SQLException{
        BalanceDAO dao = new BalanceDAO();
        List balanceLists = dao.findBalancesByCriteria(getBalance());
        setBalances(balanceLists);
        return SUCCESS;
    }
    /**
     * @return the balance
     */
    public BalanceData getBalance() {
        return balance;
    }

    /**
     * @param balance the balance to set
     */
    public void setBalance(BalanceData balance) {
        this.balance = balance;
    }

    /**
     * @return the balances
     */
    public List getBalances() {
        return balances;
    }

    /**
     * @param balances the balances to set
     */
    public void setBalances(List balances) {
        this.balances = balances;
    }
    
   private BalanceData balance;
   private List balances;
}
