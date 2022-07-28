class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Biology', 'Red Blood Cells', '17 Nov 2021', '20 Nov 2021', 'Pending'),
  AssignmentData(
      'Physics', 'bohr theory', '11 Nov 2021', '20 Nov 2021', 'Submitted'),
  AssignmentData('Chemistry', 'Organic Chemistry', '21 Oct 2021', '27 Oct 2021',
      'Not Submitted'),
  AssignmentData(
      'Mathematics', 'Algebra', '17 Sep 2021', '30 Sep 2021', 'Pending'),
];
