/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.math.BigDecimal;
import java.time.LocalDateTime;
/**
 *
 * @author Julio
 */
public class Penjualan {
    private int penjualanId;
    private int userId;
    private BigDecimal totalAmount;
    private BigDecimal amountPaid;
    private BigDecimal changeAmount;
    private String paymentMethod;
    private String paymentStatus;
    private LocalDateTime penjualanDate;
    private String receiptNumber;

    public Penjualan() {
    }

    public Penjualan(int penjualanId, int userId,
                     BigDecimal totalAmount,
                     BigDecimal amountPaid,
                     BigDecimal changeAmount,
                     String paymentMethod,
                     String paymentStatus,
                     LocalDateTime penjualanDate,
                     String receiptNumber) {
        this.penjualanId = penjualanId;
        this.userId = userId;
        this.totalAmount = totalAmount;
        this.amountPaid = amountPaid;
        this.changeAmount = changeAmount;
        this.paymentMethod = paymentMethod;
        this.paymentStatus = paymentStatus;
        this.penjualanDate = penjualanDate;
        this.receiptNumber = receiptNumber;
    }

    public int getPenjualanId() {
        return penjualanId;
    }

    public void setPenjualanId(int penjualanId) {
        this.penjualanId = penjualanId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

    public BigDecimal getAmountPaid() {
        return amountPaid;
    }

    public void setAmountPaid(BigDecimal amountPaid) {
        this.amountPaid = amountPaid;
    }

    public BigDecimal getChangeAmount() {
        return changeAmount;
    }

    public void setChangeAmount(BigDecimal changeAmount) {
        this.changeAmount = changeAmount;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public LocalDateTime getPenjualanDate() {
        return penjualanDate;
    }

    public void setPenjualanDate(LocalDateTime penjualanDate) {
        this.penjualanDate = penjualanDate;
    }

    public String getReceiptNumber() {
        return receiptNumber;
    }

    public void setReceiptNumber(String receiptNumber) {
        this.receiptNumber = receiptNumber;
    }
}
