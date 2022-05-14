import mysql.connector as connector

class hostel_management:
    
    def __init__(self):
        
                                     # constructor for connection
        print("connecting...")
        self.con = connector.connect(host='localhost',port='3306',user='root',password='root',database='HOSTELIO_MANAGEOMA', auth_plugin='mysql_native_password')
        print("connected")
        
    def show_table(self):             # show all data in table
        querry='show tables'
        cur=self.con.cursor()
        cur.execute(querry)
        for row in cur:
            print(row)
    
    def table_content(self,tablename):
        querry='select * from {}'.format(tablename)
        cur=self.con.cursor()
        cur.execute(querry)
        for row in cur:
            print(row)
    
    # def insert_in_student(self,tablename,sid,sfname,slname,iyear,sbatch,iroom,iphone,ipphone):
    #     querry='insert into {} values("{}", "{}" ,"{}", {} ,"{}", {}, {} ,{})'.format(tablename,sid,sfname,slname,iyear,sbatch,iroom,iphone,ipphone)
    #     cur = self.con.cursor()
    #     cur.execute(querry)
    #     self.con.commit()
    #     print("inserted")
    
        
        
        
a= hostel_management()
a.show_table()
a.table_content('transact')
# a.insert_in_student("student",("1234","python","mai noob hu",45,"kahi nai",345,4566543269,345666769))
