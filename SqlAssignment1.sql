use iNeuron;

create table skills(
id integer,
technology varchar(50) not null
);

insert into skills values(1,'DS'),
(1,'POWERBI'),
(1,'PYTHON'),
(1,'SQL'),
(2,'POWERBI'),
(2,'PYTHON'),
(2,'SQL'),
(3,'POWERBI'),
(3,'PYTHON'),
(3,'SQL');

select * from skills;

select id from skills
where technology = 'DS'
and id in(
select id from skills
where technology = 'SQL'
and id in(
select id from skills
where technology = 'PYTHON'
)
);