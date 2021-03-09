How to select only character variables with SQL

Use sql arrays

GitHub
https://tinyurl.com/y22sjn9x
https://github.com/rogerjdeangelis/utl-How-to-select-only-character-variables-with-SQL

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

Inspired by
https://tinyurl.com/pxtj96sy
https://stackoverflow.com/questions/66478570/how-to-select-only-char-variables-with-proc-sql-in-sas-enterprise-guide


*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

SASHELP.CLASS

 Variables in Creation Order

#    Variable    Type    Len

1    NAME        Char      8  * select only name and sex
2    SEX         Char      1

3    AGE         Num       8
4    HEIGHT      Num       8
5    WEIGHT      Num       8

*
 _ __  _ __ ___   ___ ___  ___ ___
| '_ \| '__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
;

%array(chrs,values=%utl_varlist(sashelp.class,keep=_character_));

proc sql;
  select
      %do_over(chrs,phrase=?,between=comma)
  from
      sashelp.class
;quit;

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

NAME      SEX
-------------
Joyce     F
Louise    F
Alice     F
James     M
Thomas    M
John      M
Jane      F
Janet     F
Jeffrey   M
Carol     F
Henry     M
Judy      F
Robert    M
Barbara   F
Mary      F
William   M
Ronald    M
Alfred    M
Philip    M
