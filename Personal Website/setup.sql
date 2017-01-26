create database cvbase;

select cvbase;

drop table if exists uzytkownicy;

create table uzytkownicy
(
  id                    int not null AUTO_INCREMENT,
  email                 char(255) not null,
  haslo                 char(255) not null,
  imie                  char(255) not null,
  nazwisko              char(255) not null,
  telefon               char(255) not null
  primary key (id)
);

INSERT INTO uzytkownicy (Email, Haslo, Imie, Nazwisko, Telefon) VALUES ('test@test.pl', '11111111', 'Test', 'Test', '111-111-111');
