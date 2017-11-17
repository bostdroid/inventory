/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.activedge.atm.replenishment.data;

import com.activedge.atm.web.common.BaseData;
import java.sql.Date;

/**
 *
 * @author postgres
 */
public class ReplenishmentData extends BaseData {

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
    private double authCostPost;
    private double authPostpost;
    private Date createDate;
    private String status;
    private String endtrandate;
}
