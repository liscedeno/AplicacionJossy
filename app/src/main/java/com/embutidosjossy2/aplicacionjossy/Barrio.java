package com.embutidosjossy2.aplicacionjossy;

import android.os.Parcel;
import android.os.Parcelable;

public class Barrio {

    private int id;
    private String codigobarrio;
    private String nombrebarrio;
    private int iddistrito;

    public Barrio(){

    }

    public Barrio(int id, String codigobarrio, String nombrebarrio, int iddistrito) {
        this.id = id;
        this.codigobarrio = codigobarrio;
        this.nombrebarrio = nombrebarrio;
        this.iddistrito = iddistrito;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigobarrio() {
        return codigobarrio;
    }

    public void setCodigobarrio(String codigobarrio) {
        this.codigobarrio = codigobarrio;
    }

    public String getNombrebarrio() {
        return nombrebarrio;
    }

    public void setNombrebarrio(String nombrebarrio) {
        this.nombrebarrio = nombrebarrio;
    }

    public int getIddistrito() {
        return iddistrito;
    }

    public void setIddistrito(int iddistrito) {
        this.iddistrito = iddistrito;
    }

    @Override
    public String toString() {
        return nombrebarrio;
    }
}
