create table users(
	user_id int auto_increment primary key,
    user_name varchar(40),
    password varchar(255),
    email varchar(255)
);
create table roles(
	roles_id int auto_increment,
    role_name varchar(55),
    primary key(roles_id)
);
create table userroles(
	user_id int not null,
    roles_id int not null,
    primary key(user_id,roles_id),
    foreign key (user_id) references users (user_id),
    foreign key (roles_id) references roles (roles_id)
);
alter table roles
	add primary key (role_name);
