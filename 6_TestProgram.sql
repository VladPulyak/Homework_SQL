use Library
go

declare @userEmail nvarchar(20),@authorFirstName nvarchar(20),@authorLastName nvarchar(20),@bookName nvarchar(20)
set @userEmail = 'ivan@gmail.com'
set @authorFirstName = N'Сергей'
set @authorLastName = N'Есенин'
set @bookName = N'Стихи'
execute GiveBookToUser @userEmail,@authorFirstName,@authorLastName,@bookName 

go

declare @userEmail nvarchar(20),@authorFirstName nvarchar(20),@authorLastName nvarchar(20),@bookName nvarchar(20)
set @userEmail = 'ivan@gmail.com'
set @authorFirstName = N'Сергей'
set @authorLastName = N'Есенин'
set @bookName = N'Стихи'

update UserBooks
set CreatedDate = '2020-10-21' where BookId = (select Id from Books where Name = @bookName)

execute ReturnBook @userEmail,@authorFirstName,@authorLastName,@bookName

go

declare @userEmail nvarchar(20),@authorFirstName nvarchar(20),@authorLastName nvarchar(20),@bookName nvarchar(20)
set @userEmail = 'vlad@gmail.com'
set @authorFirstName = N'Сергей'
set @authorLastName = N'Есенин'
set @bookName = N'Избранное'

execute ReturnBook @userEmail,@authorFirstName,@authorLastName,@bookName

go

declare @userEmail nvarchar(20),@authorFirstName nvarchar(20),@authorLastName nvarchar(20),@bookName nvarchar(20)
set @userEmail = 'ivan@gmail.com'
set @authorFirstName = N'Сергей'
set @authorLastName = N'Есенин'
set @bookName = N'Стихи'

update Users
set ExpiredDate = '2020-10-22' where Id = (select Id from UsersInfo where BookName = @bookName)

execute DeleteUsersByExpiredDate 

execute ReturnBook @userEmail,@authorFirstName,@authorLastName,@bookName

execute DeleteUsersByExpiredDate 
