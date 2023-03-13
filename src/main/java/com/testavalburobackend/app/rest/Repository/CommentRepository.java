package com.testavalburobackend.app.rest.Repository;

import com.testavalburobackend.app.rest.Model.Comment;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Long> {

    List<Comment> findByidcomentario(@Param("idcomentario") int idcomentario, Sort sort);
}
