package com.testavalburobackend.app.rest.Model;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;

import java.sql.Date;
import java.sql.Timestamp;

@Entity
@Table(name = "tbcomentario")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column
    private String nombre;
    @Column
    private String comentario;
    @Column
    private int puntos;
    @Column
    private int cant_respuestas;
    @Column
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSS", shape = JsonFormat.Shape.STRING)
    @CreatedDate
    private Timestamp fecha;
    @Column
    private int idcomentario;

    @Column
    private String avatar;


    public long getId(){
        return id;
    }
    public void setId(long id){
        this.id = id;
    }

    public String getNombre(){
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getComentario(){
        return comentario;
    }
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    public int getCant_respuestas() {
        return cant_respuestas;
    }
    public void setCant_respuestas(int cant_respuestas) {
        this.cant_respuestas = cant_respuestas;
    }

    public Timestamp getFecha(){
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public int getIdcomentario() {
        return idcomentario;
    }

    public void setIdcomentario(int idcomentario) {
        this.idcomentario = idcomentario;
    }

    public String getAvatar(){
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
