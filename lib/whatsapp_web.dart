import 'package:flutter/material.dart';

class WhatsappWeb extends StatefulWidget {
  const WhatsappWeb({this.isMedium = false});

  final bool isMedium;

  @override
  _WhatsappWebState createState() => _WhatsappWebState();
}

class _WhatsappWebState extends State<WhatsappWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left widget
          _buildChatList(),

          // Right Widget
          _buildExpandedChat(),
        ],
      ),
    );
  }

  Expanded _buildChatList() {
    return Expanded(
      flex: widget.isMedium ? 1 : 3,
      child: Card(
        margin: EdgeInsets.zero,
        color: const Color(0xFF070D11),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white12,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              // Appbar
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 8.0,
                  left: 16,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.indigoAccent,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              // Search bar
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2F32),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search or start new chat',
                          hintStyle: const TextStyle(fontSize: 14),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Chats list
              Expanded(
                child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                      ),
                      title: Text(
                        'First name',
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        'Hi, hello. message',
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        '09:23 AM',
                        style: const TextStyle(color: Colors.white60),
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildExpandedChat() {
    return Expanded(
      flex: widget.isMedium ? 2 : 8,
      child: Column(
        children: [
          // Appbar
          _chatAppbar(),

          // Body
          Expanded(
            child: Container(
              color: const Color(0xFF05080A),
              alignment: Alignment.center,
              child: Text('Body'),
            ),
          ),

          // Bottom chat widget
          _chatBottombar(),
        ],
      ),
    );
  }

  Widget _chatAppbar() {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0xFF2A2F32),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.orange,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'User name',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _chatBottombar() {
    return Card(
      color: const Color(0xFF1E2428),
      margin: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.people),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFF323739),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type a message',
                    contentPadding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.mic),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
