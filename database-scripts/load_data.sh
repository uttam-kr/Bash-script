#We can load data in database using sql*loader tool. It consist following types of file :-
#1.flatfile(data containing file)
#2.control file(consist collection of command i.e required to load data into database.)
#3.log file (It consist record i.e no of record loaded/failes/updates etc)
#4.Discard file(It contains rows that were discarded because they were filtered out because of a statement in the SQL*Loader control file)
#5.Bad files ( It contains rejected file due to error occured in datatype i.e bad datatype,or referential integrity constraints)

#we need to create control file using flat file.

#ex:- vim uttam.ctl
#creating control file for variable record flatfile
#===================================================

#load data
#infile 'path of flatfile'
#badfile 'path of badfile,sample.bad'
#discardfile 'path of discardfile,sample.dsc'
#insert/append/truncate/replace
#into table tablename
#fields terminated by ','
#optionally enclosed by '"'
#trailing nullcols
#(col1,col2,col3,...)


#!/bin/sh 
sqlldr userid=scott/tiger 
control=uttam.ctl  #path of control file
log=uttam.log      #path of log file
retcode=`echo $?` 
case "$retcode" in 
0) echo "SQL*Loader execution successful" ;; 
1) echo "SQL*Loader execution exited with EX_FAIL, see logfile" ;; 
2) echo "SQL*Loader execution exited with EX_WARN, see logfile" ;; 
3) echo "SQL*Loader execution encountered a fatal error" ;; 
*) echo "unknown return code";; 
esac


