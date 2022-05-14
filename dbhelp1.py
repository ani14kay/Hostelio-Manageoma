# created and managed by : Ankur Kumar Shukla 
# Date: 28-04-2022  (last update)
# objective : To interact with the database  


from click import *
import mysql.connector as connector


class dbhelp1:
    def __init__(self):
        
        # constructor for connection
        self.con = connector.connect(host='localhost',port='3306',user='root',password='root',database='hostelio_manageoma', auth_plugin='mysql_native_password')
        print(" Welcome Sir , at your service \n CONNECTED FROM DATABSE");
       
    def createtable(self,tname2,attribute=2):
        
        querry= 'create table if not exists {}(userid int primary key, username varchar(200))'.format(tname2)  
        cur=self.con.cursor()
        cur.execute(querry)
        self.con.commit()
        print("table created")
    
    def createtable(self,tname3,attribute=3):
             
        querry= 'create table if not exists {}(userid int primary key, username varchar(200),phone(12))'.format(tname3)  
        cur=self.con.cursor()
        cur.execute(querry)
        self.con.commit()
        print("table created")
       
       
    def show_table(self):
        querry="show tables"
        cur=self.con.cursor()
        # cur=confirm.cursor()
        cur.execute(querry)
        # self.con.commit()
        for row in cur:
            print(row)
        
        print("table shown")
      
    # show_table()
       
       
       
        # querry='create table if not exists tablename(userid int primary key, username varchar(200),phone varchar(12))'
        
        # cur=self.con.cursor()
        # cur.execute(querry)
        # print("Created")
        #  insert the element in table 
    def insert(self,userid,username,phone):
        querry='insert into tablename values({},"{}","{}")'.format(userid,username,phone)
        cur=self.con.cursor()
        cur.execute(querry)
        self.con.commit()
        print("Inserted")
    
    #print all content of table    
    def fetchall(self):
        querry='select * from tablename'
        cur=self.con.cursor()
        cur.execute(querry)
        for row in cur:
            
            print("userid: ",row[0])
            print("username: ",row[1])
            print("phone: ",row[2])
            print("=========================================================")
            
    # print particular id   
    def fetchid(self,userid):
        querry='select * from tablename where userid= {}'.format(userid)
        cur = self.con.cursor()
        cur.execute(querry)
        for row in cur:
            print("userid: ",row[0])
            print("username: ",row[1])
            print("phone: ",row[2])
            
    #  delete user with user id 
    def deleteuser(self,userid):
        querry= 'delete from tablename where userid={}'.format(userid)
        cur= self.con.cursor()
        cur.execute(querry)
        self.con.commit()
        print("deleted") 
         
    # update user with user id 
    def updateuser(self,userid,newname,newphone):
        querry = 'update tablename set username="{}",phone="{}" where userid="{}"'.format(newname,newphone,userid)
        cur = self.con.cursor()
        cur.execute(querry)
        self.con.commit()
        print("updated")

    def general_querry_fetch(self):
        # input querry from user
        querry = input("Enter your querry to fetch: ")
        cur = self.con.cursor()
        cur.execute(querry)
        data= cur.fetchall()
        for row in data:
            for i in range(len(row)):
                print(row[i])
            
            print("\n")
        print("========data fetched========")
        print("querry executed")


    def delete_row(self):
        querry = input("Enter the querry  to  delete: ")
        cur = self.con.cursor()
        cur.execute(querry)
        # show the table
        
        self.con.commit()
        print("deleted")


    def update_row(self):
        querry = input("Enter the querry  to  update: ")
        cur = self.con.cursor()
        cur.execute(querry)
        # show the table
        
        self.con.commit()
        print("updated")











# class godmode:
#     def __init__(self):
#         self.con = connector.connect(host='localhost',port='3306',user='root',password='root',database='hostelio_manageoma', auth_plugin='mysql_native_password')
#         print(" Welcome Sir , at your service \n CONNECTED FROM DATABSE");

#     def general_querry(self):
#         # input querry from user
#         querry = input("Enter your querry: ")
#         cur = self.con.cursor()
#         cur.execute(querry)
#         self.con.commit()
#         print("querry executed")