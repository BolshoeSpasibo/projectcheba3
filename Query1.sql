SELECT
`authors`.author_name,
`authors`.author_surname,
books.book_name
FROM
books
INNER JOIN books_authors ON books_authors.book_authors_book_id = books.book_id
INNER JOIN `authors` ON books_authors.book_authors_author_id_3 = `authors`.author_id OR books_authors.book_authors_author_id_2 = `authors`.author_id OR books_authors.book_authors_author_id_1 = `authors`.author_id
INNER JOIN books_genre ON books.book_set_genre_id = books_genre.book_genre_id
INNER JOIN genre ON books_genre.book_genre_genre_id_1 = genre.genre_id OR books_genre.book_genre_genre_id_2 = genre.genre_id OR books_genre.book_genre_genre_id_3 = genre.genre_id
WHERE
genre.genre_name = 'Фантастика'
