/* Create Admin User */
/* https://dba.stackexchange.com/questions/111727/mongo-create-a-user-as-admin-for-any-database-raise-an-error */
db.createUser(
  { 
    user: "mongoadmin" , 
    pwd: "mongoadmin", 
    roles: ["userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase"]
  })
