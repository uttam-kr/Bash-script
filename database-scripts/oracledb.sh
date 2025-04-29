#!/bin/bash  #/bin/bash is a default location for bash shell. 

FILE="uttam.csv"

sqlplus -s scott/tiger@dbname <<EOF   #s flag to keep password silent.

SET PAGESIZE 50000     #This value indicates the number of lines per page
SET COLSEP ","         #SELECT clause will be comma separated in csv file
SET LINESIZE 200       #The number of characters per line
SET FEEDBACK OFF       #When a select query is executed, a statement appears at the prompt, say "25 rows selected". In order to prevent this from appearing in the CSV file, the feedback is put off.

SPOOL $FILE            #This will write the results of the query to the file
SELECT * FROM EMP;          

SPOOL OFF              #To stop writing the contents of the sql session to the file    
EXIT
EOF
