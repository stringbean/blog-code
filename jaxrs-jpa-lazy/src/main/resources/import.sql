-- create an article
INSERT INTO article(title) VALUES ('Coding with JAX-RS and JPA for fun and profit');

-- with two tags
INSERT INTO tag(tag, article) VALUES ('jax-rs', 1);
INSERT INTO tag(tag, article) VALUES ('jpa', 1);