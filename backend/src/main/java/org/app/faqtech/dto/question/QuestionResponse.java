package org.app.faqtech.dto.question;

import org.app.faqtech.dto.user.UserResponse;
import org.app.faqtech.entity.Question;

import java.time.LocalDateTime;
import java.util.List;

public record QuestionListResponse(
        Long id,
        String title,
        String text,
        LocalDateTime createdAt,
        Integer answersCount,
        UserResponse user
) {

    public static QuestionListResponse fromEntity(Question question) {
        return new QuestionListResponse(
                question.getId(),
                question.getTitle(),
                question.getText(),
                question.getCreatedAt(),
                question.getAnswers().size(),
                UserResponse.fromUser(question.getUser())
        );
    }

    public static List<QuestionListResponse> fromEntities(List<Question> questions) {
        return questions.stream()
                .map(QuestionListResponse::fromEntity)
                .toList();
    }
}
