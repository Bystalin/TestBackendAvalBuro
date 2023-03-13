package com.testavalburobackend.app.rest.Controller;

import com.testavalburobackend.app.rest.Model.Comment;
import com.testavalburobackend.app.rest.Repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@RestController
public class ComentController {

    @Autowired
    private CommentRepository commentRepository;

    @GetMapping(value = "/")
    public String holaMundo() {
        String dateTime = LocalDateTime.now().format(DateTimeFormatter.ISO_DATE_TIME);
        return "HOLA MUNDO!!! - " + dateTime;
    }


    @GetMapping(value = "/comments")
    public List<Comment> getComments() {
        return commentRepository.findAll();
    }

    @GetMapping("/comments/idcomment/{idcomentario}")
    public List<Comment> findByName(@PathVariable("idcomentario") int idcomentario) {
        return commentRepository.findByidcomentario(idcomentario, Sort.by(Sort.Direction.DESC, "id"));
    }

    @PostMapping(value = "/savecomment")
    public Comment saveComment(@RequestBody Comment comment) {
        String dateTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
        comment.setFecha(Timestamp.valueOf(dateTime));
        return commentRepository.save(comment);
    }

    @PutMapping(value = "/update/{id}")
    @CrossOrigin("*")
    public Comment updateComment(@PathVariable long id, @RequestBody Comment comment) {
        return commentRepository.save(comment);
    }


}
