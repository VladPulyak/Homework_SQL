use Library
go

insert into Authors values
(N'������',N'������',N'����','1933-08-27'),
(N'���������',N'������',N'����','1852-02-15'),
(N'����',N'��������',N'����','1812-05-17')

insert into Books values
(N'���������',
(select Id from Authors where LastName = N'������'),
1999),
(N'�����',
(select Id from Authors where LastName = N'������'),
1875),
(N'����������� �����',
(select Id from Authors where LastName = N'������'),
1987),
(N'������� ������',
(select Id from Authors where LastName = N'������'),
1966),
(N'��-��',
(select Id from Authors where LastName = N'��������'),
1985),
(N'���� � ����',
(select Id from Authors where LastName = N'��������'),
1860),
(N'�����',
(select Id from Authors where LastName = N'��������'),
1855)

insert into Users values
(N'�����',N'���������','vlad@gmail.com','2003-01-25',1,N'������������, 58','1900-01-01'),
(N'��������',N'����','ilya@gmail.com','2002-11-15',1,N'������, 78','1900-01-01'),
(N'���������',N'����','artem@gmail.com','1990-12-05',1,N'������, 15','1900-01-01'),
(N'������',N'����','ivan@gmail.com','1945-01-16',1,N'����������, 65','1900-01-01')

insert into UserBooks values
(
(select Id from Users where email = 'vlad@gmail.com'),
(select Id from Books where Name = N'���������'),
'1900-01-01'
),
(
(select Id from Users where email = 'vlad@gmail.com'),
(select Id from Books where Name = N'����������� �����'),
'1900-01-01'
),
(
(select Id from Users where email = 'ilya@gmail.com'),
(select Id from Books where Name = N'������� ������'),
'1900-01-01'
),
(
(select Id from Users where email = 'artem@gmail.com'),
(select Id from Books where Name = N'��-��'),
'1900-01-01'
),
(
(select Id from Users where email = 'ivan@gmail.com'),
(select Id from Books where Name = N'���� � ����'),
'1900-01-01'
),
(
(select Id from Users where email = 'ilya@gmail.com'),
(select Id from Books where Name = N'�����'),
'1900-01-01'
)
