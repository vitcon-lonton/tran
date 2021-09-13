part of 'notification.dart';

class Notification {
  final String message;
  final bool? friendRequest;

  Notification(this.message, {this.friendRequest = false});

  static List<Notification> generated() {
    return [
      Notification('Linh Dang wants to be your friend.', friendRequest: true),
      Notification('Alex Dang wants to be your friend.', friendRequest: true),
      Notification('Alex Dang wants to be your friend.', friendRequest: true),
      Notification('Linh Dang wants to be your friend.', friendRequest: true),
      Notification('You have agreed to be friends with Kaity Nguyen.'),
      Notification('You have agreed to be friends with Dang Dong Nhien.'),
      Notification('You have agreed to be friends with Kaity Nguyen.'),
      Notification('You have agreed to be friends with Kaity Nguyen.'),
      Notification('You have agreed to be friends with Kaity Nguyen.'),
    ];
  }
}

class NotificationTile extends StatelessWidget {
  final Notification notification;

  const NotificationTile(this.notification, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.fromBorderSide(kBorderSide),
      ),
      padding: EdgeInsets.symmetric(horizontal: kSpaceM, vertical: kSpaceXS),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            notification.message,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: kBodyMedium.copyWith(fontSize: 14),
          ),
          kVSpaceXXS,
          Text('2 minutes ago',
              style: TextStyle(color: Colors.black54, fontSize: 12)),
          kVSpaceXS,
          if (notification.friendRequest ?? false)
            Container(
              height: 32,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: ElevatedButton(
                      child: Text('Accept'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        textStyle: kBodyMedium.copyWith(fontSize: 12),
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 6,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Decline'),
                      style: OutlinedButton.styleFrom(
                        textStyle: kBodyMedium.copyWith(fontSize: 12),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
