package com.kiosk.app.infra.order;

public class Order {

    public String orderSeq;

    public String totalPrice;

    public String orderTime;

    public String orderList_seq;


    public String getOrderSeq() {
        return orderSeq;
    }

    public void setOrderSeq(String orderSeq) {
        this.orderSeq = orderSeq;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderList_seq() {
        return orderList_seq;
    }

    public void setOrderList_seq(String orderList_seq) {
        this.orderList_seq = orderList_seq;
    }
}
