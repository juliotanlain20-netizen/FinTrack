/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.math.BigDecimal;
/**
 *
 * @author Julio
 */
public class PenjualanDetail {
     private int penjualanDetailId;
    private int penjualanId;
    private int produkId;
    private int quantity;
    private BigDecimal unitPrice;
    private BigDecimal subtotal;

    public PenjualanDetail() {
    }

    public PenjualanDetail(int penjualanDetailId,
                           int penjualanId,
                           int produkId,
                           int quantity,
                           BigDecimal unitPrice,
                           BigDecimal subtotal) {
        this.penjualanDetailId = penjualanDetailId;
        this.penjualanId = penjualanId;
        this.produkId = produkId;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.subtotal = subtotal;
    }

    public int getPenjualanDetailId() {
        return penjualanDetailId;
    }

    public void setPenjualanDetailId(int penjualanDetailId) {
        this.penjualanDetailId = penjualanDetailId;
    }

    public int getPenjualanId() {
        return penjualanId;
    }

    public void setPenjualanId(int penjualanId) {
        this.penjualanId = penjualanId;
    }

    public int getProdukId() {
        return produkId;
    }

    public void setProdukId(int produkId) {
        this.produkId = produkId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(BigDecimal subtotal) {
        this.subtotal = subtotal;
    }
}
