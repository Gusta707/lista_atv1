use atividade;

# 1 
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
values ('As Crônicas de Nárnia', 'C.S. Lewis', '1950', TRUE, 'Fantasia', '978-0064471190', 'HaperCollins', '768', 'Inglês');

# 2 
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
values ('Cem Anos de Solidão', 'Harry Potter e a Pedra Filosofal', 'O Senhor dos Anéis: A Sociedade do Anel', 'Gabriel Garcia Marquez', 'J.K. Rowling', 'J.R.R. Tolkien', '1967', '1997', '1954', TRUE, TRUE, TRUE, 'Ficção', 'Fantasia', 'Fantasia', '978-0241968581', '978-0439708180', '978-0618640157', 'Penguin Books', 'Bloomsbury', 'HarperCollins' , 422, 309, 423, 'Espanhol', 'Inglês', 'Inglês');

# 3
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
 values ('A Sociedade do Anel', 'James Browl', 1994, TRUE, 'história com detalhes fictícios', '978-0618640157', 'HarperCollins', 423, 'Inglês');
 
# 4
update Livros
set disponivel = false
where ano_publicao <2000;

# 5
update Livros
set editora = 'Plume Books'
where titulo = '1984';

# 6
update Livros
set idioma = 'Inglês'
where editora = 'Plume Books';

# 7
update Livros
set titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
where ISBN = '978-0439708180';
 
# 8
delete from Livros 
where categoria = 'Terror';

# 9
delete from Livros 
where idioma = 'Francês' and ano_publicacao < 1970;

# 10
delete from Livros 
where titulo = 'As Crônicas de Nárnia';

# 11
delete from Livros 
where editora = 'Penguin Books';

# 12
select * from Livros
where quantidade_paginas > 500;

# 13
select * from Livros
where categoria = 'Drama'
group by titulos;

# 14
select * from Livros
limit 5;

# 15
select count (quantidade_paginas) , sum (quantidade_paginas) , avg (quantidade_paginas)
from Livros
WHERE categoria = "Drama";

# 16
select avg (ano_publicacao) from Livros
where disponivel = TRUE;

# 17
select min (ano_publicacao) as '1900', max (ano_publicacao) as '2024'
from Livros;

# 18
select * from Livros
where ano_publicacao
order by titulos desc;

# 19
select * from Livros
where idioma = 'Inglês'
union
select * from Livros
where idioma = 'Português';

# 20
select * from Livros
where autor = 'George Orwell';