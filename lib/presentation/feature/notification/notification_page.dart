part of 'notification.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifications = Notification.generated();

    return ScaffoldBG(
      appBar: AppBar(
        title: Text('Notification'),
        actions: [IconButton(icon: kIcDelete, onPressed: () {})],
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: notifications.length,
        separatorBuilder: (_, i) => kVSpaceM,
        itemBuilder: (_, i) => NotificationTile(notifications[i]),
        padding: EdgeInsets.symmetric(
          horizontal: kSpaceM,
        ).copyWith(bottom: kSpaceL, top: kSpaceM),
      ),
    );
  }
}
