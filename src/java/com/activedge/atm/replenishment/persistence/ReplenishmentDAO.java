/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activedge.atm.replenishment.persistence;

import com.activedge.atm.balance.data.BalanceData;
import com.activedge.atm.replenishment.data.ReplenishmentData;
import com.activedge.atm.web.common.BaseDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author postgres
 */
public class ReplenishmentDAO extends BaseDAO {
 
/**
 * finds all balances by criteria
 */    
public List findReplenishmentsByCriteria(ReplenishmentData searchCriteria) throws SQLException {
        List replenishments = new ArrayList();
         
    
     String sql = "SELECT * FROM EJ_INVENTORY ";
     
     System.out.println("EJ-Date "+searchCriteria.getTranDate());
     String querydate = searchCriteria.getTranDate();
     String newdate = "";
     if (querydate != null & querydate.length() > 9){
      String day = querydate.substring(8, 10);
      String month = querydate.substring(5, 7);
      String year = querydate.substring(0, 4);
        newdate = year + month + day;

        System.out.println("EJ-Date "+newdate);
        
     }
     
        String endDate = searchCriteria.getEndtrandate();
        String newDate1 = "";
        if (endDate != null & endDate.length() > 9) {
            String day = endDate.substring(8, 10);
            String month = endDate.substring(5, 7);
            String year = endDate.substring(0, 4);
            newDate1 = year + month + day;
            System.out.println("new date1 " + newDate1);
        }
  
   String sSQLWhere = "";
   if (searchCriteria.getTranDate()!= null &&  searchCriteria.getTranDate().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " TRAN_DT >= ? ");
   }
   if (searchCriteria.getEndtrandate()!= null &&  searchCriteria.getEndtrandate().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " TRAN_DT <= ? ");
   }
   if (searchCriteria.getTerminalId()!= null &&  searchCriteria.getTerminalId().trim().length() > 0)
   {   
       sSQLWhere = addWhereClause(sSQLWhere, " TERMINAL_ID = ? ");
   }
   if (searchCriteria.getInvOrigin()!= null &&  searchCriteria.getInvOrigin().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " INV_ORIGIN = ? ");
   }

   if (searchCriteria.getPreCount1()!= null &&  searchCriteria.getPreCount1().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " PRE_COUNT_1 = ? ");
   }
   if (searchCriteria.getPostCount1()!= null &&  searchCriteria.getPostCount1().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " POST_COUNT_1 = ? ");
   } 
   if (searchCriteria.getPostDenom1()!= null &&  searchCriteria.getPostDenom1().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " POST_DENOM_1 = ? ");
   } 
   if (searchCriteria.getInventoryRef()!= null &&  searchCriteria.getInventoryRef().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " INVENTORY_REF = ? ");
   }
         if (searchCriteria.getStatus()!= null &&  searchCriteria.getStatus().trim().length() > 0)
   {
       sSQLWhere = addWhereClause(sSQLWhere, " STATUS = ? ");
   }
   
   
   if (sSQLWhere != null && sSQLWhere.trim().length()> 0)
     sql += " where " + sSQLWhere;
   System.out.println("SQL " + sql);
     Connection conn= null;
     try {
         conn = getConnection();

            PreparedStatement stmt = conn.prepareStatement(sql);
            int i =1;
   if (searchCriteria.getTranDate()!= null &&  searchCriteria.getTranDate().trim().length() > 0)
   {
       stmt.setString(i++, searchCriteria.getTranDate());
   }
   if (searchCriteria.getEndtrandate()!= null &&  searchCriteria.getEndtrandate().trim().length() > 0)
   {
       stmt.setString(i++, searchCriteria.getEndtrandate());
   }
   if (searchCriteria.getTerminalId()!= null &&  searchCriteria.getTerminalId().trim().length() > 0)
   {   
            stmt.setString(i++, searchCriteria.getTerminalId());
   }
   if (searchCriteria.getInvOrigin()!= null &&  searchCriteria.getInvOrigin().trim().length() > 0)
   {
       stmt.setString(i++, searchCriteria.getInvOrigin());
   }

   if (searchCriteria.getPreCount1()!= null &&  searchCriteria.getPreCount1().trim().length() > 0)
   {
       stmt.setString(i++, searchCriteria.getPreCount1());
   }
   if (searchCriteria.getPostCount1()!= null &&  searchCriteria.getPostCount1().trim().length() > 0)
   {
        stmt.setString(i++, searchCriteria.getPostCount1());
   } 
   if (searchCriteria.getPostDenom1()!= null &&  searchCriteria.getPostDenom1().trim().length() > 0)
   {
        stmt.setString(i++, searchCriteria.getPostDenom1());
   } 
 
                  
            ResultSet rs = stmt.executeQuery();
            while (rs.next())
            {
                
                ReplenishmentData replenishment = new ReplenishmentData();
                replenishment.setId(rs.getLong("id"));
                replenishment.setTerminalId(rs.getString("TERMINAL_ID"));
                System.out.println("terminal "+replenishment.getTerminalId());
                replenishment.setInvOrigin(rs.getString("INV_ORIGIN"));
                replenishment.setTranDate(rs.getString("TRAN_DT"));
                replenishment.setPreCount1(rs.getString("PRE_COUNT_1"));
                replenishment.setPostCount1(rs.getString("POST-COUNT_1"));
                replenishment.setPostDenom1(rs.getString("POST_DENOM_1"));
                replenishment.setInventoryRef(rs.getString("INVENTORY_REF"));
                replenishment.setStatus(rs.getString("STATUS"));
 
               replenishments.add(replenishment);
            }
                System.out.println("total balance "+replenishments.size());

            rs.close();
            stmt.close();



           // conn.commit();
     }  catch (SQLException ex) {
         ex.printStackTrace();
         System.out.println("error finding all balances error msg " + ex.getMessage());
         Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
         throw ex;
     }  catch (Exception ex) {
         Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
         throw new SQLException(ex.getMessage());
     }  
     finally
     {
         try {
             this.releaseConnection(conn);
         } catch (SQLException ex) {
             Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
         }
     }
     return replenishments;
    } 
}
