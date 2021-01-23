package com.embutidosjossy2.aplicacionjossy;


import android.os.Parcel;
import android.os.Parcelable;

public class Usuario implements Parcelable {
    private int id;
    private String nombre;
    private String usuario;
    private String clave;
    private int idcargo;
    private String descripcion;

    public Usuario() {
    }

    public Usuario(int id, String nombre, String usuario,String clave, int idcargo, String descripcion) {
        this.id = id;
        this.nombre = nombre;
        this.usuario = usuario;
        this.idcargo = idcargo;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getIdcargo() {
        return idcargo;
    }

    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "" + id + "     " + nombre;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.id);
        dest.writeString(this.nombre);
        dest.writeString(this.clave);
        dest.writeInt(this.idcargo);
        dest.writeString(this.descripcion);
    }

    protected Usuario(Parcel in) {
        this.id = in.readInt();
        this.nombre = in.readString();
        this.clave = in.readString();
        this.idcargo = in.readInt();
        this.descripcion = in.readString();
    }

    public static final Parcelable.Creator<Usuario> CREATOR = new Parcelable.Creator<Usuario>() {
        @Override
        public Usuario createFromParcel(Parcel source) {
            return new Usuario(source);
        }

        @Override
        public Usuario[] newArray(int size) {
            return new Usuario[size];
        }
    };
}
