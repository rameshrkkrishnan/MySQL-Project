create database Library;
use Library;

-- Creating tables;

create table Branch (
	Branch_no int primary key, 
    Manager_id int, 
    Branch_address varchar(50), 
    Contact_no bigint);

create table Employee (
	Emp_id int primary key, 
    Emp_name varchar(30), 
    Position varchar(30), 
    Salary int, 
    Branch_no int, 
    foreign key(Branch_no) references Branch(Branch_no));

create table Books (
	ISBN varchar (20) primary key, 
	Book_title varchar(50), 
    Category varchar(30), 
    Rental_price int, 
    Status varchar(5),
    Author varchar(20),
    Publisher varchar(30));
    

create table Customer (
	Customer_id int primary key, 
    Customer_name varchar(40), 
    Customer_address varchar(50), 
    Reg_date date);

create table IssueStatus (
	Issue_id int primary key, 
    Issued_customer int, 
    foreign key(Issued_customer) references Customer(Customer_id), 
    Issue_date date, 
    ISBN_book varchar(20), 
    foreign key(ISBN_book) references Books(ISBN));

create table Returnstatus (
	Return_id int primary key, 
    Return_cust int, 
    Return_book_name varchar(50), 
    Return_date date, 
    ISBN_book2 varchar(20), 
    foreign key(ISBN_book2) references Books(ISBN));
    
-- Describing all the tables;

describe Branch;
describe Employee;
describe Books;
describe Customer;
describe IssueStatus;
describe Returnstatus;

-- Inserting values into table;

-- Branch table

insert into Branch (Branch_no, Manager_id, Branch_address, Contact_no) values 
(514, 101, 'River valley road, Arlington, Texas, USA', 8533687469),
(779, 102, 'Church road, Loyola, New York, USA', 5596324856),
(338, 103, 'Winston road, Maryland, Washington, USA', 6891555752),
(916, 104, 'Bently road, Winstor, Miami, USA', 4688226945);

select * from Branch;

-- Employee table

insert into Employee (Emp_id, Emp_name, Position, Salary, Branch_no) values 
(101, 'Sam Arton', 'Manager', 4200, 514),
(501, 'Amy Peter', 'Librarian', 4000, 514),
(502, 'Steve Irwin', 'Deputy Librarian', 3800, 514),
(102, 'Hanna Paul', 'Manager', 4100, 779),
(503, 'Hanks Finn', 'Librarian', 3800, 779),
(504, 'Christina Philip', 'Deputy Librarian', 3700, 779),
(103, 'Maria Tom', 'Manager', 4300, 338),
(505, 'Robert Stanley', 'Librarian', 3900, 338),
(506, 'Liya Johnson', 'Deputy Librarian', 3700, 338),
(104, 'Luke Finn', 'Manager', 4300, 916),
(507, 'Mary Tim', 'Librarian', 4000, 916),
(508, 'Sam Neesham', 'Deputy Librarian', 3800, 916),
(509, 'Rita Hobbs', 'Library Assistant', 3500, 916);

select * from Employee;

-- Books table

insert into Books (ISBN, Book_title, Category, Rental_price, Status, Author, Publisher) values 
('978-1-60309-517-4', 'Ashes', 'Fiction', 5, 'YES', 'Alvaro Ortiz', 'Top Shelf Productions'),
('978-0-14043-426-2', 'Pride and prejudice', 'Fiction Satire', 6, 'YES', 'Jane Austin', 'Modern Library'),
('978-0-06165-100-7', 'A Christmas carol', 'Fiction', 4, 'YES', ' Charles Dickens', 'HarperCollins'),
('978-0-48640-651-0', 'A tale of two cities', 'Historical', 8, 'NO', 'Charles Dickens', 'Chapman & Hall'),
('978-0-61800-224-5', 'The return of the king', 'Fantasy', 9, 'NO', 'J. R. R. Tolkien', 'Softcover'),
('978-8-17234-477-1', 'Dracula', 'Horror', 9, 'YES', 'Bram Stoker', 'Archibald Constable & Company'),
('978-8-17234-469-6', 'The three musketeers', 'Adventure', 8, 'YES', 'Alexandre Dumas', 'Oxford University Press'),
('978-1-40007-998-8', 'War and peace', 'Historical Fiction', 10, 'NO', 'Leo Tolstoy', 'Oxford University Press'),
('978-0-09952-996-5', 'Les misérables', 'Fiction Tragedy', 7, 'YES', 'Victor Hugo', 'A.Lacroix & Co'),
('978-1-94564-451-1', 'The call of the wild', 'Adventure Fiction', 5, 'NO', 'Jack London', 'Macmillan'),
('978-0-14303-943-3', 'The grapes of wrath', 'Historical Fiction', 8, 'YES', 'John Steinbeck', 'Penguin Classics'),
('978-9-38081-678-4', 'Heidi', 'Fiction', 4, 'NO', 'Johanna Spyri', 'Mapple Press'),
('978-1-90759-027-6', 'The old man and the sea', 'Novel', 6, 'YES', 'Ernest Hemingway', 'Charles Scribner Sons'),
('978-9-38676-032-6', 'Black Beauty', 'Novel Fiction', 9, 'YES', 'Anna Sewell', 'Olive Publications'),
('978-0-39453-305-6', 'The stranger', 'Crime Fiction', 7, 'YES', 'Albert Camus', 'Knopf');

select * from Books;

-- Customer table

insert into Customer (Customer_id, Customer_name, Customer_address, Reg_date) values 
(1001, 'Ricky James', 'Portsblare, Willington', '2020-02-11'),
(1002, 'Ziya Hann', 'Hancock, Christ Church', '2020-07-22'),
(1003, 'Jamy Smith', 'White Rock, Disney Street', '2020-12-16'),
(1004, 'Phil Huges', 'Leland, Wonder Street ', '2021-05-01'),
(1005, 'Martin Colins', 'Kanab, Shillong', '2021-06-20'),
(1006, 'Ivan Philip', 'McCook, Antigua', '2022-10-02'),
(1007, 'Robert Minns', 'Girdwood, Barbados', '2022-10-19'),
(1008, 'Nicola Toms', 'Sugarcreek, Brooklyn', '2022-11-15'),
(1009, 'Jane Johnson', 'Newberry, Newlands', '2022-12-24'),
(1010, 'Molly Doms', 'Cross Bridge, Jainet', '2022-12-30'),
(1011, 'Harry Smith', 'Latrobe, Albany', '2023-01-29'),
(1012, 'Liam Steves', 'Kingston, Chandler', '2023-06-30'),
(1013, 'Anna Petes', 'Monowi, Clovis', '2023-07-22'),
(1014, 'Elina Toms', 'Freeport, Birmngham', '2023-09-11'),
(1015, 'Christopher Williams', 'McMullen, Fremont', '2023-10-09');

select * from Customer;

-- IssueStatus table

insert into IssueStatus (Issue_id, Issued_customer, Issue_date, ISBN_book) values 
(24101, 1001, '2024-05-06', '978-1-60309-517-4'),
(24102, 1003, '2024-05-11', '978-0-06165-100-7'),
(24103, 1004, '2024-05-29', '978-8-17234-477-1'),
(24104, 1007, '2024-06-15', '978-0-14043-426-2'),
(24105, 1008, '2024-06-21', '978-8-17234-469-6'),
(24106, 1010, '2024-06-22', '978-0-09952-996-5'),
(24107, 1012, '2024-06-23', '978-0-14303-943-3'),
(24108, 1013, '2024-06-23', '978-1-90759-027-6'),
(24109, 1015, '2024-06-27', '978-0-39453-305-6');

select * from IssueStatus;

-- Returnstatus table

insert into Returnstatus (Return_id, Return_cust, Return_book_name, Return_date, ISBN_book2) values 
(24501, 1001, 'Ashes', '2024-05-21', '978-1-60309-517-4'),
(24502, 1004, 'Dracula', '2024-06-08', '978-8-17234-477-1'),
(24503, 1007, 'Pride and prejudice', '2024-06-22', '978-0-14043-426-2'),
(24504, 1008, 'The three musketeers', '2024-06-29', '978-8-17234-469-6'),
(24505, 1010, 'Les misérables', '2024-07-03', '978-0-09952-996-5'),
(24506, 1012, 'The grapes of wrath', '2024-07-07', '978-0-14303-943-3'),
(24507, 1013, 'The old man and the sea', '2024-07-10', '978-1-90759-027-6');

select * from Returnstatus;

-- Displaying all the tables

select * from Branch;
select * from Employee;
select * from Books;
select * from Customer;
select * from IssueStatus;
select * from Returnstatus;

-- Data need to retrieve

/* 
1. Retrieve the book title, category, and rental price of all available books. 
2. List the employee names and their respective salaries in descending order of salary. 
3. Retrieve the book titles and the corresponding customers who have issued those books. 
4. Display the total count of books in each category. 
5. Retrieve the employee names, salary and their positions for the employees whose salaries are above Rs.50,000. 
6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
7. Display the branch numbers and the total count of employees in each branch. 
8. Display the names of customers who have issued books in the month of June 2023.
9. Retrieve book_title from book table containing history. 
10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
11. Retrieve the names of employees who manage branches and their respective branch addresses.
12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.
*/

-- 1. Retrieve the book title, category, and rental price of all available books. 

select Book_title, Category, Rental_Price from Books;

-- 2. List the employee names and their respective salaries in descending order of salary. 

select Emp_name, Salary from Employee order by Salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 

select Books.Book_title, IssueStatus.Issued_customer from Books inner join IssueStatus on Books.ISBN = IssueStatus.ISBN_book;

-- 4. Display the total count of books in each category.

select Category, count(ISBN) as Total_books from Books group by Category;

-- 5. Retrieve the employee names, salary and their positions for the employees whose salaries are above $3750. 

select Emp_name, Position, Salary from Employee where Salary > 3750;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.    
    
select  Customer.Customer_name from Customer left join IssueStatus on Customer.Customer_id = IssueStatus.Issued_customer
	where Customer.Reg_date < '2022-01-01' and IssueStatus.Issued_customer is null;
    
-- 7. Display the branch numbers and the total count of employees in each branch. 
    
select Branch.Branch_no, count(Employee.Emp_id) as total_employees from Branch inner join Employee 
	on Branch.Branch_no = Employee.Branch_no group by Branch_no; 

-- 8. Display the names of customers who have issued books in the month of May 2024
    
select Customer.Customer_name, IssueStatus.Issue_date from Customer inner join 
	IssueStatus on Customer.Customer_id = IssueStatus.Issued_customer 
		where Issue_date >= '2024-05-01' and Issue_date <='2024-05-31';

-- 9. Retrieve book_title from book table containing Fiction. 

select Book_title, Category from Books where Category = 'Fiction';

-- 10. Retrieve the branch numbers along with the count of employees for branches having more than 2 employees

select Branch_no, count(Emp_id) as Total_employees from Employee group by Branch_no having count(Emp_id) > 3;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.

select Employee.Emp_name, Branch.Manager_id, Branch.Branch_address from Employee inner join Branch on Employee.Emp_id = Branch.Manager_id;

-- 12. Display the names of customers who have issued books with a rental price higher than $6.

select Customer_name from Customer where Customer_id in 
	(select Issued_customer from IssueStatus where ISBN_book in 
		(select ISBN from Books where Rental_price > 6 ) );


