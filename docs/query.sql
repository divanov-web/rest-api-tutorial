CREATE TABLE public.author (
                               id uuid primary key default gen_random_uuid(),
                               name varchar(100) NOT NULL
);

CREATE TABLE public.book (
                             id uuid primary key default gen_random_uuid(),
                             name varchar(100) NOT NULL,
                             author_id uuid not null,
                             CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES public.author(id)
);

INSERT INTO author (name) VALUES ('народ');
INSERT INTO author (name) VALUES ('Джоин Роулинг');
INSERT INTO author (name) VALUES ('Джек Лондон');

INSERT INTO book (name, author_id) VALUES ('Колобок', 'a05c0ce4-922e-4d51-8475-f312dc9dc9bd');
INSERT INTO book (name, author_id) VALUES ('Гарри Поттер', '1d2b56d7-ad00-4438-90e5-6aefcfa91e7e');
INSERT INTO book (name, author_id) VALUES ('Бриллианты', '05c79016-f17b-47f2-abe9-5447abb7c598');

SELECT * FROM author;