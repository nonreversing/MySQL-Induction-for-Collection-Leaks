/* This will create the basic table. We'll use dummy paths later to discard passwords containing delimiters. */
CREATE TABLE Table_Name (
    email VARCHAR(256),
    password VARCHAR(256)
    );

/* Use this to test if the table was correctly formatted. */
/*
SELECT * FROM Database.Table_Name;
*/

LOAD DATA INFILE 'File_Path.txt' IGNORE
INTO TABLE Table_Name
FIELDS TERMINATED BY ':'
LINES TERMINATED BY '\r\n'
(email, password, @discard1, @discard2) /* Fast and ugly way to ignore passwords that would break induction. Use RipGrep to clean up files beforehand. See RG CleanUp BAT in repository. */
/* Previous debug commands below. Do not use with IGNORE -- warning that dataset from 
Collection 1-5 files may have formatting errors. */
/*
SET
password = NULLIF(password,''),
email = NULLIF(email,'')
*/
;

/* This last step is optional. The command will create a Primary Key ID for each e-mail. */
/*
ALTER TABLE Database.Table_Name
ADD ID INT AUTO_INCREMENT PRIMARY KEY;
*/

/* Additional debug:
Did you want to delete the table? */
/*
DROP TABLE Table_Name;
*/
