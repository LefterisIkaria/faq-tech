INSERT INTO users (firstname, lastname, username, password, email) VALUES
('Lefteris', 'Papaioannou', 'lefpap', 'monkey', 'lefpap@test.com'),
('John', 'Doe', 'johndoe', 'pass123', 'johndoe@example.com'),
('Jane', 'Smith', 'janesmith', 'pass456', 'janesmith@example.com'),
('Alice', 'Johnson', 'alicej', 'pass789', 'alicej@example.com'),
('Bob', 'Williams', 'bobw', 'pass321', 'bobw@example.com'),
('Charlie', 'Brown', 'charlieb', 'pass654', 'charlieb@example.com'),
('David', 'Davis', 'davidd', 'pass987', 'davidd@example.com'),
('Emily', 'Evans', 'emilye', 'pass135', 'emilye@example.com'),
('Frank', 'Franklin', 'frankf', 'pass246', 'frankf@example.com'),
('Grace', 'Green', 'graceg', 'pass369', 'graceg@example.com'),
('Harry', 'Harrison', 'harryh', 'pass159', 'harryh@example.com');


INSERT INTO questions (title, text, created_at, user_id) VALUES
('How to use Spring Boot?', 'I am new to Spring Boot and want to learn how to use it. Can anyone help?', '2023-01-01', (SELECT id FROM users WHERE username = 'lefpap')),
('What is JPA?', 'I heard about JPA in a Java course. Can anyone explain what it is?', '2023-01-02', (SELECT id FROM users WHERE username = 'janesmith')),
('How to create a React app?', 'I want to create a new React app. What are the steps?', '2023-01-03', (SELECT id FROM users WHERE username = 'janesmith')),
('What is Docker?', 'I heard about Docker in a DevOps course. Can anyone explain what it is?', '2023-01-04', (SELECT id FROM users WHERE username = 'johndoe')),
('How to use Python for data analysis?', 'I want to use Python for data analysis. What libraries should I use?', '2023-01-05', (SELECT id FROM users WHERE username = 'johndoe')),
('What is machine learning?', 'I heard about machine learning in a data science course. Can anyone explain what it is?', '2023-01-06', (SELECT id FROM users WHERE username = 'bobw')),
('How to create a Vue.js app?', 'I want to create a new Vue.js app. What are the steps?', '2023-01-07', (SELECT id FROM users WHERE username = 'harryh')),
('What is Kubernetes?', 'I heard about Kubernetes in a DevOps course. Can anyone explain what it is?', '2023-01-08', (SELECT id FROM users WHERE username = 'davidd')),
('How to use R for data analysis?', 'I want to use R for data analysis. What libraries should I use?', '2023-01-09', (SELECT id FROM users WHERE username = 'harryh')),
('What is deep learning?', 'I heard about deep learning in a data science course. Can anyone explain what it is?', '2023-01-10', (SELECT id FROM users WHERE username = 'davidd'));


INSERT INTO answers (text, created_at, user_id, question_id) VALUES
('Spring Boot is a framework that simplifies the setup of Spring applications.', '2023-01-02', 2, 1),
('JPA stands for Java Persistence API. It is a specification for accessing, persisting, and managing data between Java objects and a relational database.', '2023-01-03', 1, 2),
('You can create a new React app using the Create React App command line tool.', '2023-01-04', 4, 3),
('Docker is a platform that allows you to automate the deployment, scaling, and management of applications using containerization.', '2023-01-05', 5, 4),
('For data analysis in Python, you can use libraries like pandas, numpy, and matplotlib.', '2023-01-06', 6, 5),
('Machine learning is a field of artificial intelligence that uses statistical techniques to give computer systems the ability to learn from data.', '2023-01-07', 7, 6),
('You can create a new Vue.js app using the Vue CLI command line tool.', '2023-01-08', 8, 7),
('Kubernetes is an open-source platform designed to automate deploying, scaling, and operating application containers.', '2023-01-09', 9, 8),
('For data analysis in R, you can use libraries like dplyr, ggplot2, and tidyr.', '2023-01-10', 10, 9),
('Deep learning is a subset of machine learning that uses neural networks with many layers (hence "deep") to model and understand complex patterns.', '2023-01-11', 1, 10);




