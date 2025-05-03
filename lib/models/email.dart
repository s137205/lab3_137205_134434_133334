class Email {
  final String senderName;
  final String senderEmail;
  final String subject;
  final String sentDate;
  final String details;

  Email({
    required this.senderName,
    required this.senderEmail,
    required this.subject,
    required this.sentDate,
    required this.details,
  });
}

List<Email> emailList = [
  Email(
    senderName: "Abdullah Khamis",
    senderEmail: "abdullah@gmail.com",
    subject: "Welcome",
    sentDate: "1/4/2025",
    details: "Hi there,\n\nThis is a test for the email server.",
  ),
  Email(
    senderName: "Ali Salem",
    senderEmail: "Ali@squ.edu.om",
    subject: "Add course",
    sentDate: "1/1/2025",
    details: "Dear student,\n\nWe have enrolled you in COMP4206.",
  ),
  Email(
    senderName: "Huda Mohammed",
    senderEmail: "Huda@utas.edu.om",
    subject: "Programming contest",
    sentDate: "10/4/2025",
    details: "Congratulations for winning the contest and best regards.",
  ),
];
