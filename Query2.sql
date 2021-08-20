SELECT DISTINCT
Count(`authors`.author_id) AS c,
`authors`.author_surname
FROM
books_authors
INNER JOIN `authors` ON books_authors.book_authors_author_id_1 = `authors`.author_id OR	books_authors.book_authors_author_id_2 = `authors`.author_id OR books_authors.book_authors_author_id_3 = `authors`.author_id
GROUP BY
`authors`.author_id
ORDER BY
c
DESC
