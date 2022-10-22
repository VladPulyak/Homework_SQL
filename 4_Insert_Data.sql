use Library
go

insert into Authors values
(N'Сергей',N'Есенин',N'СССР','1933-08-27'),
(N'Александр',N'Пушкин',N'СССР','1852-02-15'),
(N'Иван',N'Тургенев',N'СССР','1812-05-17')

insert into Books values
(N'Избранное',
(select Id from Authors where LastName = N'Есенин'),
1999),
(N'Стихи',
(select Id from Authors where LastName = N'Есенин'),
1875),
(N'Капитанская дочка',
(select Id from Authors where LastName = N'Пушкин'),
1987),
(N'Евгений Онегин',
(select Id from Authors where LastName = N'Пушкин'),
1966),
(N'Му-му',
(select Id from Authors where LastName = N'Тургенев'),
1985),
(N'Отцы и дети',
(select Id from Authors where LastName = N'Тургенев'),
1860),
(N'Рудин',
(select Id from Authors where LastName = N'Тургенев'),
1855)

insert into Users values
(N'Пуляк',N'Владислав','vlad@gmail.com','2003-01-25',1,N'Партизанский, 58','1900-01-01'),
(N'Максимов',N'Илья','ilya@gmail.com','2002-11-15',1,N'Победы, 78','1900-01-01'),
(N'Жуковский',N'Артём','artem@gmail.com','1990-12-05',1,N'Гикало, 15','1900-01-01'),
(N'Иванов',N'Иван','ivan@gmail.com','1945-01-16',1,N'Тимирязева, 65','1900-01-01')

insert into UserBooks values
(
(select Id from Users where email = 'vlad@gmail.com'),
(select Id from Books where Name = N'Избранное'),
'1900-01-01'
),
(
(select Id from Users where email = 'vlad@gmail.com'),
(select Id from Books where Name = N'Капитанская дочка'),
'1900-01-01'
),
(
(select Id from Users where email = 'ilya@gmail.com'),
(select Id from Books where Name = N'Евгений Онегин'),
'1900-01-01'
),
(
(select Id from Users where email = 'artem@gmail.com'),
(select Id from Books where Name = N'Му-му'),
'1900-01-01'
),
(
(select Id from Users where email = 'ivan@gmail.com'),
(select Id from Books where Name = N'Отцы и дети'),
'1900-01-01'
),
(
(select Id from Users where email = 'ilya@gmail.com'),
(select Id from Books where Name = N'Рудин'),
'1900-01-01'
)
