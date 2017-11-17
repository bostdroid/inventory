/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activedge.atm.balance.data;

import com.activedge.atm.web.common.BaseData;
import java.sql.Date;

/**
 *
 * @author postgres
 */
public class BalanceData extends BaseData {

    /**
     * @return the balance
     */
    public String getBalance() {
        return balance;
    }

    /**
     * @param balance the balance to set
     */
    public void setBalance(String balance) {
        this.balance = balance;
    }

    /**
     * @return the authorizedAmount
     */
    public String getAuthorizedAmount() {
        return authorizedAmount;
    }

    /**
     * @param authorizedAmount the authorizedAmount to set
     */
    public void setAuthorizedAmount(String authorizedAmount) {
        this.authorizedAmount = authorizedAmount;
    }

    /**
     * @return the calculatedAmount
     */
    public String getCalculatedAmount() {
        return calculatedAmount;
    }

    /**
     * @param calculatedAmount the calculatedAmount to set
     */
    public void setCalculatedAmount(String calculatedAmount) {
        this.calculatedAmount = calculatedAmount;
    }

    /**
     * @return the invType
     */
    public String getInvType() {
        return invType;
    }

    /**
     * @param invType the invType to set
     */
    public void setInvType(String invType) {
        this.invType = invType;
    }

    /**
     * @return the invOrigin
     */
    public String getInvOrigin() {
        return invOrigin;
    }

    /**
     * @param invOrigin the invOrigin to set
     */
    public void setInvOrigin(String invOrigin) {
        this.invOrigin = invOrigin;
    }

    /**
     * @return the issuer
     */
    public String getIssuer() {
        return issuer;
    }

    /**
     * @param issuer the issuer to set
     */
    public void setIssuer(String issuer) {
        this.issuer = issuer;
    }

    /**
     * @return the terminalId
     */
    public String getTerminalId() {
        return terminalId;
    }

    /**
     * @param terminalId the terminalId to set
     */
    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    /**
     * @return the currency
     */
    public String getCurrency() {
        return currency;
    }

    /**
     * @param currency the currency to set
     */
    public void setCurrency(String currency) {
        this.currency = currency;
    }

    /**
     * @return the inventoryRef
     */
    public String getInventoryRef() {
        return inventoryRef;
    }

    /**
     * @param inventoryRef the inventoryRef to set
     */
    public void setInventoryRef(String inventoryRef) {
        this.inventoryRef = inventoryRef;
    }

    /**
     * @return the tranDate
     */
    public String getTranDate() {
        return tranDate;
    }

    /**
     * @param tranDate the tranDate to set
     */
    public void setTranDate(String tranDate) {
        this.tranDate = tranDate;
    }

    /**
     * @return the tranTime
     */
    public String getTranTime() {
        return tranTime;
    }

    /**
     * @param tranTime the tranTime to set
     */
    public void setTranTime(String tranTime) {
        this.tranTime = tranTime;
    }

    /**
     * @return the totalPreAmount
     */
    public String getTotalPreAmount() {
        return totalPreAmount;
    }

    /**
     * @param totalPreAmount the totalPreAmount to set
     */
    public void setTotalPreAmount(String totalPreAmount) {
        this.totalPreAmount = totalPreAmount;
    }

    /**
     * @return the totalPostAmount
     */
    public String getTotalPostAmount() {
        return totalPostAmount;
    }

    /**
     * @param totalPostAmount the totalPostAmount to set
     */
    public void setTotalPostAmount(String totalPostAmount) {
        this.totalPostAmount = totalPostAmount;
    }

    /**
     * @return the preCount1
     */
    public String getPreCount1() {
        return preCount1;
    }

    /**
     * @param preCount1 the preCount1 to set
     */
    public void setPreCount1(String preCount1) {
        this.preCount1 = preCount1;
    }

    /**
     * @return the postCount1
     */
    public String getPostCount1() {
        return postCount1;
    }

    /**
     * @param postCount1 the postCount1 to set
     */
    public void setPostCount1(String postCount1) {
        this.postCount1 = postCount1;
    }

    /**
     * @return the preDenom1
     */
    public String getPreDenom1() {
        return preDenom1;
    }

    /**
     * @param preDenom1 the preDenom1 to set
     */
    public void setPreDenom1(String preDenom1) {
        this.preDenom1 = preDenom1;
    }

    /**
     * @return the postDenom1
     */
    public String getPostDenom1() {
        return postDenom1;
    }

    /**
     * @param postDenom1 the postDenom1 to set
     */
    public void setPostDenom1(String postDenom1) {
        this.postDenom1 = postDenom1;
    }

    /**
     * @return the preCount2
     */
    public String getPreCount2() {
        return preCount2;
    }

    /**
     * @param preCount2 the preCount2 to set
     */
    public void setPreCount2(String preCount2) {
        this.preCount2 = preCount2;
    }

    /**
     * @return the postCount2
     */
    public String getPostCount2() {
        return postCount2;
    }

    /**
     * @param postCount2 the postCount2 to set
     */
    public void setPostCount2(String postCount2) {
        this.postCount2 = postCount2;
    }

    /**
     * @return the preDenom2
     */
    public String getPreDenom2() {
        return preDenom2;
    }

    /**
     * @param preDenom2 the preDenom2 to set
     */
    public void setPreDenom2(String preDenom2) {
        this.preDenom2 = preDenom2;
    }

    /**
     * @return the postDenom2
     */
    public String getPostDenom2() {
        return postDenom2;
    }

    /**
     * @param postDenom2 the postDenom2 to set
     */
    public void setPostDenom2(String postDenom2) {
        this.postDenom2 = postDenom2;
    }

    /**
     * @return the preCount3
     */
    public String getPreCount3() {
        return preCount3;
    }

    /**
     * @param preCount3 the preCount3 to set
     */
    public void setPreCount3(String preCount3) {
        this.preCount3 = preCount3;
    }

    /**
     * @return the postCount3
     */
    public String getPostCount3() {
        return postCount3;
    }

    /**
     * @param postCount3 the postCount3 to set
     */
    public void setPostCount3(String postCount3) {
        this.postCount3 = postCount3;
    }

    /**
     * @return the preDenom3
     */
    public String getPreDenom3() {
        return preDenom3;
    }

    /**
     * @param preDenom3 the preDenom3 to set
     */
    public void setPreDenom3(String preDenom3) {
        this.preDenom3 = preDenom3;
    }

    /**
     * @return the postDenom3
     */
    public String getPostDenom3() {
        return postDenom3;
    }

    /**
     * @param postDenom3 the postDenom3 to set
     */
    public void setPostDenom3(String postDenom3) {
        this.postDenom3 = postDenom3;
    }

    /**
     * @return the preCount4
     */
    public String getPreCount4() {
        return preCount4;
    }

    /**
     * @param preCount4 the preCount4 to set
     */
    public void setPreCount4(String preCount4) {
        this.preCount4 = preCount4;
    }

    /**
     * @return the postCount4
     */
    public String getPostCount4() {
        return postCount4;
    }

    /**
     * @param postCount4 the postCount4 to set
     */
    public void setPostCount4(String postCount4) {
        this.postCount4 = postCount4;
    }

    /**
     * @return the preDenom4
     */
    public String getPreDenom4() {
        return preDenom4;
    }

    /**
     * @param preDenom4 the preDenom4 to set
     */
    public void setPreDenom4(String preDenom4) {
        this.preDenom4 = preDenom4;
    }

    /**
     * @return the postDenom4
     */
    public String getPostDenom4() {
        return postDenom4;
    }

    /**
     * @param postDenom4 the postDenom4 to set
     */
    public void setPostDenom4(String postDenom4) {
        this.postDenom4 = postDenom4;
    }

    /**
     * @return the preCount5
     */
    public String getPreCount5() {
        return preCount5;
    }

    /**
     * @param preCount5 the preCount5 to set
     */
    public void setPreCount5(String preCount5) {
        this.preCount5 = preCount5;
    }

    /**
     * @return the postCount5
     */
    public String getPostCount5() {
        return postCount5;
    }

    /**
     * @param postCount5 the postCount5 to set
     */
    public void setPostCount5(String postCount5) {
        this.postCount5 = postCount5;
    }

    /**
     * @return the preDenom5
     */
    public String getPreDenom5() {
        return preDenom5;
    }

    /**
     * @param preDenom5 the preDenom5 to set
     */
    public void setPreDenom5(String preDenom5) {
        this.preDenom5 = preDenom5;
    }

    /**
     * @return the postDenom5
     */
    public String getPostDenom5() {
        return postDenom5;
    }

    /**
     * @param postDenom5 the postDenom5 to set
     */
    public void setPostDenom5(String postDenom5) {
        this.postDenom5 = postDenom5;
    }

    /**
     * @return the preCount6
     */
    public String getPreCount6() {
        return preCount6;
    }

    /**
     * @param preCount6 the preCount6 to set
     */
    public void setPreCount6(String preCount6) {
        this.preCount6 = preCount6;
    }

    /**
     * @return the postCount6
     */
    public String getPostCount6() {
        return postCount6;
    }

    /**
     * @param postCount6 the postCount6 to set
     */
    public void setPostCount6(String postCount6) {
        this.postCount6 = postCount6;
    }

    /**
     * @return the preDenom6
     */
    public String getPreDenom6() {
        return preDenom6;
    }

    /**
     * @param preDenom6 the preDenom6 to set
     */
    public void setPreDenom6(String preDenom6) {
        this.preDenom6 = preDenom6;
    }

    /**
     * @return the postDenom6
     */
    public String getPostDenom6() {
        return postDenom6;
    }

    /**
     * @param postDenom6 the postDenom6 to set
     */
    public void setPostDenom6(String postDenom6) {
        this.postDenom6 = postDenom6;
    }

    /**
     * @return the preCount7
     */
    public String getPreCount7() {
        return preCount7;
    }

    /**
     * @param preCount7 the preCount7 to set
     */
    public void setPreCount7(String preCount7) {
        this.preCount7 = preCount7;
    }

    /**
     * @return the postCount7
     */
    public String getPostCount7() {
        return postCount7;
    }

    /**
     * @param postCount7 the postCount7 to set
     */
    public void setPostCount7(String postCount7) {
        this.postCount7 = postCount7;
    }

    /**
     * @return the preDenom7
     */
    public String getPreDenom7() {
        return preDenom7;
    }

    /**
     * @param preDenom7 the preDenom7 to set
     */
    public void setPreDenom7(String preDenom7) {
        this.preDenom7 = preDenom7;
    }

    /**
     * @return the postDenom7
     */
    public String getPostDenom7() {
        return postDenom7;
    }

    /**
     * @param postDenom7 the postDenom7 to set
     */
    public void setPostDenom7(String postDenom7) {
        this.postDenom7 = postDenom7;
    }

    /**
     * @return the preCount8
     */
    public String getPreCount8() {
        return preCount8;
    }

    /**
     * @param preCount8 the preCount8 to set
     */
    public void setPreCount8(String preCount8) {
        this.preCount8 = preCount8;
    }

    /**
     * @return the postCount8
     */
    public String getPostCount8() {
        return postCount8;
    }

    /**
     * @param postCount8 the postCount8 to set
     */
    public void setPostCount8(String postCount8) {
        this.postCount8 = postCount8;
    }

    /**
     * @return the preDenom8
     */
    public String getPreDenom8() {
        return preDenom8;
    }

    /**
     * @param preDenom8 the preDenom8 to set
     */
    public void setPreDenom8(String preDenom8) {
        this.preDenom8 = preDenom8;
    }

    /**
     * @return the postDenom8
     */
    public String getPostDenom8() {
        return postDenom8;
    }

    /**
     * @param postDenom8 the postDenom8 to set
     */
    public void setPostDenom8(String postDenom8) {
        this.postDenom8 = postDenom8;
    }

    /**
     * @return the preCount9
     */
    public String getPreCount9() {
        return preCount9;
    }

    /**
     * @param preCount9 the preCount9 to set
     */
    public void setPreCount9(String preCount9) {
        this.preCount9 = preCount9;
    }

    /**
     * @return the postCount9
     */
    public String getPostCount9() {
        return postCount9;
    }

    /**
     * @param postCount9 the postCount9 to set
     */
    public void setPostCount9(String postCount9) {
        this.postCount9 = postCount9;
    }

    /**
     * @return the preDenom9
     */
    public String getPreDenom9() {
        return preDenom9;
    }

    /**
     * @param preDenom9 the preDenom9 to set
     */
    public void setPreDenom9(String preDenom9) {
        this.preDenom9 = preDenom9;
    }

    /**
     * @return the postDenom9
     */
    public String getPostDenom9() {
        return postDenom9;
    }

    /**
     * @param postDenom9 the postDenom9 to set
     */
    public void setPostDenom9(String postDenom9) {
        this.postDenom9 = postDenom9;
    }

    /**
     * @return the preCount10
     */
    public String getPreCount10() {
        return preCount10;
    }

    /**
     * @param preCount10 the preCount10 to set
     */
    public void setPreCount10(String preCount10) {
        this.preCount10 = preCount10;
    }

    /**
     * @return the postCount10
     */
    public String getPostCount10() {
        return postCount10;
    }

    /**
     * @param postCount10 the postCount10 to set
     */
    public void setPostCount10(String postCount10) {
        this.postCount10 = postCount10;
    }

    /**
     * @return the preDenom10
     */
    public String getPreDenom10() {
        return preDenom10;
    }

    /**
     * @param preDenom10 the preDenom10 to set
     */
    public void setPreDenom10(String preDenom10) {
        this.preDenom10 = preDenom10;
    }

    /**
     * @return the postDenom10
     */
    public String getPostDenom10() {
        return postDenom10;
    }

    /**
     * @param postDenom10 the postDenom10 to set
     */
    public void setPostDenom10(String postDenom10) {
        this.postDenom10 = postDenom10;
    }

    /**
     * @return the authCostPost
     */
    public double getAuthCostPost() {
        return authCostPost;
    }

    /**
     * @param authCostPost the authCostPost to set
     */
    public void setAuthCostPost(double authCostPost) {
        this.authCostPost = authCostPost;
    }

    /**
     * @return the authPostpost
     */
    public double getAuthPostpost() {
        return authPostpost;
    }

    /**
     * @param authPostpost the authPostpost to set
     */
    public void setAuthPostpost(double authPostpost) {
        this.authPostpost = authPostpost;
    }

    /**
     * @return the createDate
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * @param createDate the createDate to set
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    private String invType;
    private String invOrigin;
    private String issuer;
    private String terminalId;
    private String currency;
    private String inventoryRef;
    private String tranDate;
    private String tranTime;
    private String totalPreAmount;
    private String totalPostAmount;
    private String preCount1;
    private String postCount1;
    private String preDenom1;
    private String postDenom1;
    private String preCount2;
    private String postCount2;
    private String preDenom2;
    private String postDenom2;
    private String preCount3;
    private String postCount3;
    private String preDenom3;
    private String postDenom3;
    private String preCount4;
    private String postCount4;
    private String preDenom4;
    private String postDenom4;
    private String preCount5;
    private String postCount5;
    private String preDenom5;
    private String postDenom5;
    private String preCount6;
    private String postCount6;
    private String preDenom6;
    private String postDenom6;
    private String preCount7;
    private String postCount7;
    private String preDenom7;
    private String postDenom7;
    private String preCount8;
    private String postCount8;
    private String preDenom8;
    private String postDenom8;
    private String preCount9;
    private String postCount9;
    private String preDenom9;
    private String postDenom9;
    private String preCount10;
    private String postCount10;
    private String preDenom10;
    private String postDenom10;
    private double authCostPost;
    private double authPostpost;
    private Date createDate;
    private String status;
    private String endtrandate;
    private String balance;
    private String authorizedAmount;
    private String calculatedAmount;

    /**
     * @return the endtrandate
     */
    public String getEndtrandate() {
        return endtrandate;
    }

    /**
     * @param endtrandate the endtrandate to set
     */
    public void setEndtrandate(String endtrandate) {
        this.endtrandate = endtrandate;
    }
    
}
