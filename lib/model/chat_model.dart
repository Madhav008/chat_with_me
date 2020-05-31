class User {
  final int id;
  final String name;
  final String imageUrl;

  User({this.id, this.name, this.imageUrl});
}

class Messages {
  final User sender;
  final String time;
  final bool unread;

  Messages({this.sender,  this.time, this.unread});
}





final User currentUser = User(
  id: 0,
  name: "Madhav Jindal",
  imageUrl: 'assets/images/greg.jpg',
);

final User raghav =
    User(
     id: 1,
     name: "Raghav Jindal",
     imageUrl: 'assets/images/steven.jpg');

final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);

List<Messages> chats = [

Messages(

  sender: currentUser,
  unread: true,
  time: "5:30",

),

Messages(
sender: raghav,
unread: false,
time: 'now'
),
  


];