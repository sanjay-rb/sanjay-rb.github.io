// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanjayrb/app/data/models/profile_model.dart';
import 'package:sanjayrb/app/services/responsive_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileWidget extends StatelessWidget {
  final ProfileModel profile;
  const ProfileWidget({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ResponsiveService.width(context, 8)),
      child: InkWell(
        onTap: profile.link != "NA"
            ? () async {
                await launchUrlString(profile.link!);
              }
            : null,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              profile.keyword!,
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka().copyWith(
                fontSize: ResponsiveService.width(context, 15),
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              profile.value!,
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka().copyWith(
                fontSize: ResponsiveService.width(context, 15),
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                decoration:
                    profile.link != "NA" ? TextDecoration.underline : null,
                decorationColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
