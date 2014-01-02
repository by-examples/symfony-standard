drop schema if exists symfony;
create schema symfony default character set utf8 collate utf8_bin;
grant all on symfony.* to symfony@localhost identified by 'symfony';
grant all on symfony.* to 'symfony'@ identified by 'symfony';
grant all on symfony.* to 'symfony'@'10.0.2.2' identified by 'symfony';

flush privileges;