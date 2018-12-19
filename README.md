# AACS3094 Web Application Assignment
## Prerequisite
### Establishing Oracle Database
This project uses oracle database from *last semester*. (AACS3013 DDA)  

We ran into the issue of Oracle Databse and Apache Tomcat using the same 8080 port.  
Thus, it is nessasary to change one of the ports to another unoccupied port.  

Below is the guide to change port  
from *8080* (default port),  
to *3010* (or any other unoccupied port).

First, have a **"OracleXE112_Win64"** installed on your host computer,  
We got it from our AACS3013 DDA tutor Mr. Heng.  

Login to any account which have DBA privilages,  
then paste in this code.  

```exec DBMS_XDB.SETHTTPPORT(3010);```

To undo the above command just change '3010' to your default port. (8080)

### Connect Oracle Database through NetBeans

Navigate through **<u>W</u>indow** > **<u>S</u>ervice** > **Database**  
Right click **Database** and click **New Connection...**.  
Select *"Oracle Thin"* as the **<u>D</u>river**.  
Download and add the required **Dri<u>v</u>er File**. (I use *ojdbc14.jar*)  

Next, insert your database account into **<u>U</u>sername** & **Pass<u>w</u>ord**.  
Press **Test <u>C</u>onnection** and it should says "*Connection Succeeded*."

Congratulations. You have your database setup and ready.  
If you have any alternatives or ideas regrading the port thingy,  
feel free to tell me. I'm interested.

<hr>

## Pseudocode (WIP)
will replace them with valid CREATE TABLE statements

CUSTOMER TABLE

    ID INTEGER INCREMENT BY 1;
    NAME VARCHAR 100;
    EMAIL VARCHAR 100;
    DOB DATE;
    PASSWORD VARCHAR;

We understood the potential danger on storing unencrypted passwords  
but for the sake of simplicity we will use raw text for now.
