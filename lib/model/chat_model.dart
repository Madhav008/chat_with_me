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
  final String text;

  Messages({this.sender, this.time, this.unread, this.text});
}

final User currentUser = User(
  id: 0,
  name: "Madhav Jindal",
  imageUrl: 'assets/images/greg.jpg',
);

final User raghav = User(
    id: 1, 
    name: "Raghav Jindal", 
    imageUrl: 'assets/images/steven.jpg'
    );

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
    text: 'Hey, how\'s it going? What did you do today?',
  ),
  Messages(
    sender: raghav,
    unread: false,
    time: 'now',
    text: 'Hey, how\'s it going? What did you do today?',
  ),
];

List<Messages> messages = [
  Messages(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Messages(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    unread: true,
  ),
  Messages(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    unread: true,
  ),
  Messages(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    unread: true,
  ),
  Messages(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    unread: true,
  ),
  Messages(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    unread: true,
  ),
];
