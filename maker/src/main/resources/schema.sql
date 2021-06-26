Create Table Is Not Exists User(
    user_id Int Unique Primary Key,
    first_name Varchar(30),
    last_name Varchar(30),
    account_type Varchar(1),
    phone Varchar(9),
    email Varchar(64),
    password Varchar(64)
);

Create Table If Not Exists Managers(
    manager_id Int Primary Key,
    user_id int,
    Foreign Key(user_id) References User(user_id)
);

Create Table If Not Exists Captains(
    captain_id Int Primary Key,
    user_id int, 
    Foreign Key(user_id) References User(user_id)
);

Create Table If Not Exists Volunteer(
    volunteer_id int Primary Key,
    user_id int, 
    Foreign Key(user_id) References User(user_id)
)

Create Table If Not Exists Schedule(
    schedule_id int Primary Key,
    user_id int, 
    department Varchar(1),
    volunteer_date DATE NOT Null,
    start_time Time Not Null,
    end_time Time Not Null,
    Foreign Key(user_id) References User(user_id)
)
