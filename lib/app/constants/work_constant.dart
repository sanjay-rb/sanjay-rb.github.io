import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';

List<TimelineModel> work = [
  TimelineModel(
    title: "System Engineer",
    subTitle: "TCS @ Bangalore",
    date: DateTime(2021, 08),
    endDate: DateTime.now(),
    type: TimelineTypeConstant.work,
    link: "NA",
    points: [
      'DataOps Leadership: Led a team of 4 to design and implement a robust DataOps pipeline, reducing ETL/ELT delays via automation and optimizing delivery times.',
      'CI/CD Pipeline Development: Spearheaded the development of a DataOps CI/CD pipeline leveraging Azure DevOps, integrating tools like SQLFluff, SonarQube, and Checkmarx for continuous scanning, with automated deployment for Snowflake, DBT, Glue, Lambda, and more.',
      'Tool & Pipeline Automation: Developed an automated static code analysis tool for Informatica tools (PowerCenter, BDM, IDMC), integrated regression testing in pipelines, and optimized ETL job deployment using Lambda and Glue.',
      'Security & Access Management: Implemented centralized pipeline access management and security controls for Jenkins pipelines, ensuring consistency and security akin to AWS IAM.',
      'Migration & Optimization: Designed a Jenkins Groovy-scripted migration tool for seamless transition from PowerCenter mappings to IDMC, significantly improving data management workflows.',
      'Performance & Documentation: Developed an isolated logging mechanism to capture audit logs for Jenkins build processes in Hive, enhancing compliance and security. ',
      'Automation Tools: Created Broot Test Automation and JIRA ticket automation tools, streamlining issue reporting and testing of data pipelines.',
    ],
  ),
  TimelineModel(
    title: "Assistant System Engineer",
    subTitle: "TCS @ Bangalore",
    date: DateTime(2020, 10),
    endDate: DateTime(2021, 08),
    type: TimelineTypeConstant.work,
    link: "NA",
    points: [
      'Deployment Automation: Automated deployment of Data Technology components using Jenkins and Groovy scripts, reducing manual efforts and increasing deployment efficiency. ',
      'Legacy Systems Optimization: Identified security vulnerabilities in older tools, eliminating password file dependencies and enhancing security across deployment pipelines. ',
      'Documentation & Training: Developed comprehensive Confluence documentation for deployment tools, standardizing procedures and enhancing team onboarding.'
    ],
  ),
  TimelineModel(
    title: "Flutter Developer - Freelance",
    subTitle: "Rooster Technology @ Coimbatore",
    date: DateTime(2020, 05),
    endDate: DateTime(2020, 10),
    type: TimelineTypeConstant.work,
    link: "NA",
    points: [
      'Mobile App Development: Designed and developed the front end for an Airlines luggage management system using Flutter, integrating CRUD operations with a user-friendly UI.'
    ],
  ),
];
