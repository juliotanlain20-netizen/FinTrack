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
public class Produk {
    private int produkId;
    private int bankId;
    private String itemCode;
    private String produkName;
    private String description;
    private BigDecimal unitPrice;
    private int stock;
    private String imageUrl;
    private boolean active;

    public Produk() {
    }

    public Produk(int produkId, int bankId, String itemCode, String produkName, String description,BigDecimal unitPrice, int stock, String imageUrl, boolean active) {
        this.produkId = produkId;
        this.bankId = bankId;
        this.itemCode = itemCode;
        this.produkName = produkName;
        this.description = description;
        this.unitPrice = unitPrice;
        this.stock = stock;
        this.imageUrl = imageUrl;
        this.active = active;
    }

    public int getProdukId() {
        return produkId;
    }

    public void setProdukId(int produkId) {
        this.produkId = produkId;
    }

    public int getBankId() {
        return bankId;
    }

    public void setBankId(int bankId) {
        this.bankId = bankId;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getProdukName() {
        return produkName;
    }

    public void setProdukName(String produkName) {
        this.produkName = produkName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
