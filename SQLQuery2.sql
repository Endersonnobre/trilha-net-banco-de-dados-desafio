-- Atividade 1
Select Nome, Ano from Filmes

--Atividade 2
Select * From Filmes order by Ano

--Atividade 3
Select * from Filmes where Nome = 'De Volta para o Futuro'

--Atividade 4
Select * from Filmes Where Ano = 1997

--Atividade 5
Select * from Filmes Where Ano > 2000

--Atividade 6
Select * from Filmes Where Duracao > 100 and Duracao < 150  order by Duracao

--Atividade 7
Select Ano, Count(*) as Quantidade From Filmes Group by Ano order by SUM(Duracao) desc

--Atividade 8
Select PrimeiroNome, UltimoNome from Atores Where Genero = 'M'

--Atividade 9
Select PrimeiroNome, UltimoNome from Atores Where Genero = 'F' order by PrimeiroNome

--Atividade 10
Select f.Nome, g.Genero From Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero

--Atividade 11
Select f.Nome, g.Genero From Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero
Where g.Genero = 'Mistério'

--Atividade 12
Select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
inner join ElencoFilme ef on f.Id = ef.IdFilme
inner join Atores a on a.Id = ef.IdAtor