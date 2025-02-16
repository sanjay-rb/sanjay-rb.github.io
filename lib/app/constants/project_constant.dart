import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';

List<TimelineModel> project = [
  TimelineModel(
    title: "100 Days of Programming",
    subTitle: "Version : 1.4.0+3",
    date: DateTime(2024, 07, 21),
    endDate: DateTime.now(),
    type: TimelineTypeConstant.project,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.hundred_days_of_programming",
    points: [
      'Diverse Coding Opportunities: Complete 100 distinct programming challenges, with the flexibility to code in any language of your choice.',
      'Customizable Themes: Enjoy an intuitive user experience with both light and dark mode options.',
      'Personalized Progress Tracking: Stay motivated with personalized task completion tracking, and easily submit your work via GitHub or LinkedIn.',
      'Build and Maintain Your Streak: Keep your streak alive and showcase your dedication as you complete each challenge.',
      'Share and Network: Share your progress on LinkedIn and document your work on GitHub, enhancing your professional network and creating a public record of your growth.'
    ],
  ),
  TimelineModel(
    title: "My Personal Portfolio",
    subTitle: "Version : 2.1.3+3",
    date: DateTime(2023, 03, 09),
    endDate: DateTime.now(),
    type: TimelineTypeConstant.project,
    link: "https://sanjay-rb.github.io/",
    points: [
      "My portfolio website! Here, you'll find a comprehensive overview of my work, projects, certifications, and contact details.",
      "Explore my achievements, professional experiences, and the skills I've developed, all in one place."
    ],
  ),
  TimelineModel(
    title: "Loga Parameshwari Temple",
    subTitle: "Version : 2.13.15+24",
    date: DateTime(2021, 05, 27),
    endDate: DateTime.now(),
    type: TimelineTypeConstant.project,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.loga_parameshwari",
    points: [
      'Comprehensive Pooja Management: A complete solution for managing your temple pooja activities.',
      'Real-Time Updates: Stay informed with live updates on current and upcoming poojas at your temple.',
      'Personalized Temple Experience: Create lasting memories by scheduling poojas and connecting with your temple’s rich history.',
      'Share with Loved Ones: Easily share your scheduled poojas with family and friends via a simple long press on the pooja card or share button.',
      'Seamless Navigation: Find your way to the temple with integrated Google Maps navigation.',
      'Immersive Temple Architecture: Explore the temple’s design through an interactive 3D model of its architecture.',
      'Special Pooja Timetable: Access detailed schedules for special poojas hosted at the temple.',
      'Stay Spiritually Connected: Download the app and maintain a deep spiritual connection with the divine, wherever you are.',
    ],
  ),
  TimelineModel(
    title: "100 Days of Flutter",
    subTitle: "Version : 1.2.7+5",
    date: DateTime(2021, 02, 17),
    endDate: DateTime.now(),
    type: TimelineTypeConstant.project,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.hundred_days_of_flutter",
    points: [
      'Comprehensive 100-Day Schedule: A structured learning plan that covers all essential widgets over 100 days.',
      'Day-by-Day Widget Breakdown: Each unique widget is assigned a dedicated day for focused learning.',
      'In-Depth Widget Introduction: Get introduced to each widget with detailed explanations and video references for deeper understanding.',
      'Progress Tracking: Mark completed lessons and use the filter feature to easily track your progress.',
      'Code Samples & Output Previews: Access real code examples with live output previews to reinforce learning.',
      'Complete Documentation: Full, accessible documentation available via an integrated website for quick reference.'
    ],
  ),
];
