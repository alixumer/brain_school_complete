import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StudentName extends StatelessWidget {
  const StudentName({Key? key, required this.studentName}) : super(key: key);
  final String studentName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Hi ', style: Theme.of(context).textTheme.subtitle1),
        Text(studentName, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({Key? key, required this.studentClass}) : super(key: key);
  final String studentClass;
  @override
  Widget build(BuildContext context) {
    return Text(studentClass, style: Theme.of(context).textTheme.subtitle2);
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({Key? key, required this.studentYear}) : super(key: key);

  final String studentYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: SizerUtil.deviceType == DeviceType.tablet ? 4.h : 3.h,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: kTextBlackColor,
              ),
        ),
      ),
    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {Key? key, required this.picAddress, required this.onPress})
      : super(key: key);
  final String picAddress;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        radius: SizerUtil.deviceType == DeviceType.tablet ? 12.w : 14.w,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picAddress),
      ),
    );
  }
}

class StudentDataCard extends StatelessWidget {
  const StudentDataCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.onPress})
      : super(key: key);
  final String title;
  final String value;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 42.w,
        height: 12.h,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: kTextBlackColor,
                  ),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kTextLightColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
