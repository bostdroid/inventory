/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activedge.atm.replenishment.action;

import com.activedge.atm.replenishment.data.ReplenishmentData;
import com.activedge.atm.replenishment.persistence.ReplenishmentDAO;
import com.activedge.atm.web.common.BaseAction;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author postgres
 */
public class ReplenishmentAction extends BaseAction {

    /**
     * initialize the table
     * @return 
     */
    
    @Override
    public String execute(){
        setReplenishment(new ReplenishmentData());
        return SUCCESS;
    }
    
    /**
     * finds All replenishments by criteria
     * @return 
     * @throws java.sql.SQLException
     */
    public String findReplenishmentsByCriteria() throws SQLException{
        ReplenishmentDAO dao = new ReplenishmentDAO();
        List replenishmentLists = dao.findReplenishmentsByCriteria(getReplenishment());
        setReplenishments(replenishmentLists);
        return SUCCESS;
    }
    
    /**
     * @return the replenishment
     */
    public ReplenishmentData getReplenishment() {
        return replenishment;
    }

    /**
     * @param replenishment the replenishment to set
     */
    public void setReplenishment(ReplenishmentData replenishment) {
        this.replenishment = replenishment;
    }

    /**
     * @return the replenishments
     */
    public List getReplenishments() {
        return replenishments;
    }

    /**
     * @param replenishments the replenishments to set
     */
    public void setReplenishments(List replenishments) {
        this.replenishments = replenishments;
    }
    
    private ReplenishmentData  replenishment;
    private List replenishments;
}
