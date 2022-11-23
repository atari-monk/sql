INSERT INTO AddressType (Name)
VALUES 
    ('Zameldowania'),
    ('Zamieszkania'),
    ('Korespondencyjny');

INSERT INTO Person (Name, Surname, IdNumber, DateOfBirth)
VALUES 
    ('Patrycja','Gajewska','71012082685','1971-01-20'),
    ('Nikola','Urbańska','66012437184','1966-01-24'),
    ('Urszula','Borkowska','66100259847','1966-10-02'),
    ('Antonina','Mazurek','82092198845','1982-09-21'),
    ('Marzanna','Jaworska','56063089324','1956-06-30'),
    ('Magdalena','Chmielewska','82060863689','1982-06-08'),
    ('Ilona','Stępień','89012121145','1989-01-21'),
    ('Elena','Jaworska','71080153645','1971-08-01'),
    ('Malwina','Górska','78110217946','1978-11-02'),
    ('Marlena','Piotrowska','02310546267','2002-11-05'),
    ('Jarosław','Sobczak','52032846639','1952-03-28'),
    ('Jerzy','Wróblewski','92110238475','1992-11-02'),
    ('Michał','Borkowski','04310329493','2004-11-03'),
    ('Milan','Andrzejewski','56121249839','1956-12-12'),
    ('Olgierd','Kaźmierczak','68071176437','1968-07-11'),
    ('Cyprian','Piotrowski','04242577757','2004-04-25'),
    ('Alex','Sikora','05240447453','2005-04-04'),
    ('Robert','Kołodziej','89092556213','1989-09-25'),
    ('Filip','Zalewski','70020529951','1970-02-05'),
    ('Maciej','Ostrowski','79100431434','1979-10-04');

INSERT INTO Address (AddressTypeId, PersonId, Street, Number, City)
VALUES 
    ('1','1','Wojska Polskiego','7','Łódź'),
    ('2','1','Tadeusza Kościuszki','2','Łódź'),
    ('1','2','Adama Mickiewicza','1/5','Kraków'),
    ('1','3','Dworcowa','14a','Bydgoszcz'),
    ('2','3','1 Maja','3','Wrocław'),
    ('2','5','Armii Krajowej','8/1','Wrocław'),
    ('3','5','Szkolna','25','Toruń'),
    ('1','6','Henryka Sienkiewicza','3','Kraków'),
    ('2','6','Rynek','8','Kraków'),
    ('3','6','Grunwaldzka','12a/5','Poznań'),
    ('1','8','Wolności','4/3','Gdańsk'),
    ('2','9','Kolejowa','5','Szczecin'),
    ('3','10','Polna','1','Bydgoszcz'),
    ('3','11','Ogrodowa','11','Gdańsk'),
    ('2','12','Warszawska','34','Poznań'),
    ('3','13','Poznańska','13','Szczecin'),
    ('3','13','Kościuszki','7c','Kraków'),
    ('1','15','3 Maja','45','Wrocław'),
    ('1','16','Juliusza Słowackiego','27/7','Elbląg'),
    ('1','16','Długa','10','Bydgoszcz'),
    ('2','17','Lipowa','3','Piła'),
    ('1','17','Leśna','8','Kalisz'),
    ('3','18','Niepodległości','4','Łódź'),
    ('2','18','11 Listopada','11','Poznań'),
    ('1','19','Kościelna','1','Piła'),
    ('2','19','Jana Pawła II','5/5','Wrocław'),
    ('1','20','Mikołaja Kopernika','30','Bydgoszcz'),
    ('3','20','Główna','6','Gdańsk');