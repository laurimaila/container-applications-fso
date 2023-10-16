db.createUser({
  user: 'username',
  pwd: 'password',
  roles: [
    {
      role: 'dbOwner',
      db: 'database',
    },
  ],
});

db.createCollection('people');
db.people.insert({ name: 'Risto Reipas', number: "040-123456" });
db.people.insert({ name: 'Matti Meikäläinen', numebr: "050-654321" });