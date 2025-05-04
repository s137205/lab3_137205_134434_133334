class Email {
  final String senderName;
  final String senderEmail;
  final String receiverEmail; // Add this field
  final String subject;
  final String sentDate;
  final String details;

  Email({
    required this.senderName,
    required this.senderEmail,
    required this.receiverEmail, // Add this field
    required this.subject,
    required this.sentDate,
    required this.details,
  });
}

List<Email> emailList = [
  Email(
    senderName: "Abdullah Khamis",
    senderEmail: "abdullah@gmail.com",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Welcome",
    sentDate: "1/4/2025",
    details: "Hi Yaseen,\n\nThis is a test for the email server.",
  ),
  Email(
    senderName: "Ali Salem",
    senderEmail: "Ali@squ.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Add course",
    sentDate: "1/1/2025",
    details: "Dear Yaseen,\n\nWe have enrolled you in COMP4206.",
  ),
  Email(
    senderName: "Huda Mohammed",
    senderEmail: "Huda@utas.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Programming contest",
    sentDate: "10/4/2025",
    details: "Congratulations Yaseen for winning the contest and best regards.",
  ),
  Email(
    senderName: "Abdullah Kalid",
    senderEmail: "abdullah123.Kalid@gmail.com",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Welcome back",
    sentDate: "1/4/2024",
    details: "Hi Yaseen,\n\nThis is a test for the email server.",
  ),
  Email(
    senderName: "Ali Ahmed",
    senderEmail: "Ali.Ahmed@squ.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Add course COMP4206",
    sentDate: "1/2/2025",
    details: "Dear Yaseen,\n\nWe have enrolled you in COMP4206.",
  ),
  Email(
    senderName: "Huda Ali",
    senderEmail: "Huda.Ali@utas.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Programming contest and results",
    sentDate: "10/3/2025",
    details: "Congratulations Yaseen for winning the contest and best regards.",
  ),
  Email(
    senderName: "Abdullah Ali",
    senderEmail: "abdullah.ali@gmail.com",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Welcome back",
    sentDate: "1/4/2024",
    details: "Hi Yaseen,\n\nThis is a test for the email server.",
  ),
  Email(
    senderName: "Ali Tariq",
    senderEmail: "Ali.Tariq@squ.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Add course COMP3206",
    sentDate: "1/2/2025",
    details: "Dear Yaseen,\n\nWe have enrolled you in COMP4206.",
  ),
  Email(
    senderName: "Huda Mohammed",
    senderEmail: "Huda.Mohammed@utas.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Programming Project",
    sentDate: "10/1/2025",
    details: "Congratulations Yaseen for winning the contest and best regards.",
  ),
  Email(
    senderName: "Sara Mohammed",
    senderEmail: "Sara.Mohammed@utas.edu.om",
    receiverEmail: "yaseen@example.com", // Yaseen's email
    subject: "Programming Prototype",
    sentDate: "18/1/2025",
    details: "Congratulations Yaseen for winning the contest and best regards.",
  ),
];
