/* Create Admin User */
/* https://dba.stackexchange.com/questions/111727/mongo-create-a-user-as-admin-for-any-database-raise-an-error */
db.createUser(
  { 
    user: "mongoadmin" , 
    pwd: "mongoadmin", 
    roles: ["userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase"]
  })
  
app.get("/retrieve", function (req, res) {
    Visitor.find({}, function (err, data) {
        if (!err) {
            res.render("retrieve", { title: "View Visitor Data", records: data });
        } else {
            throw err;
        }
    }).clone().catch(function(err){ console.log(err)})
});
