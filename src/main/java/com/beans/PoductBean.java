package com.beans;

public class PoductBean {
    int pId ;

    String category;

    int price;

    String descrip;

    int stock;

    int likes;

    byte[] image=null;



    public void setImage(byte[] image) {
        this.image = image;
    }

    public byte[] getImage() {
        return image;
    }


}
