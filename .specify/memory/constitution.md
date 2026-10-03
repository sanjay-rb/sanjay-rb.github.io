<!--
Sync Impact Report
Version change: 1.0.0 -> 1.1.0 (MINOR: add a canonical hosting requirement)
Modified principles: none
Modified sections: Additional Constraints (canonical GitHub Pages host added)
Added sections: none
Removed sections: none
Follow-up TODOs: Confirm the original adoption date and replace TODO(RATIFICATION_DATE).
-->
# Portfolio Website Constitution

## Core Principles

### I. Visitor-First Clarity
Every page MUST make its purpose and primary content clear. Navigation MUST use descriptive
labels, work consistently, and provide a direct path to the portfolio's projects and contact
information. Essential content MUST remain available without registration or interaction with
optional scripts. This keeps the site useful to visitors with different goals and devices.

### II. Accessibility and Responsive Design
Pages MUST use semantic structure, support keyboard operation, expose visible focus, provide
text alternatives for meaningful images, and maintain readable contrast. Layouts MUST adapt
to mobile and desktop viewports without unintended horizontal scrolling or obscured content.
Accessibility and responsive behavior are baseline requirements, not optional polish.

### III. Truthful, Owner-Approved Content
Project descriptions, roles, dates, outcomes, and credentials MUST be accurate and approved by
the site owner. The site MUST NOT invent projects, endorsements, metrics, or experience.
Links to source work and third-party services MUST be checked before release and when their
destination changes.

### IV. Performance and Resilience
Pages MUST avoid unnecessary blocking assets and use appropriately sized media. Core content
and navigation MUST remain usable when optional client-side behavior or third-party services
fail. Changes that materially increase page weight or add runtime dependencies MUST have a
clear user-facing benefit.

### V. Privacy and Security by Default
The site MUST NOT collect personal information or use tracking without a defined purpose and
clear notice. Secrets MUST NOT be committed to the repository or exposed in client-side code.
Any contact or data-submission feature MUST validate input and document what data it collects
and how it is handled.

## Additional Constraints

Visual design MUST help visitors inspect the owner's work rather than obscure it. Images and
other portfolio assets MUST be usable by the owner and must not misrepresent the work shown.
Pages MUST include meaningful titles and descriptions so they can be identified in browser
tabs, bookmarks, and search results. The canonical production site MUST be hosted by GitHub
Pages at https://sanjay-rb.github.io/. Build and publish configuration MUST use a GitHub
Pages-supported workflow and source content from this repository. Changing the canonical
host requires a constitution amendment.

## Development Workflow

Before release, contributors MUST check changed pages at mobile and desktop sizes, verify
keyboard access for changed interactions, and confirm that affected links and primary content
work. Automated checks MUST pass when available. Manual checks are required for user-visible
behavior that automated checks do not cover. Test effort MUST match the risk and scope of a
change.

## Governance

This constitution governs portfolio-site decisions and takes precedence over conflicting
project guidance. The site owner approves amendments. An amendment MUST update this document,
explain its rationale in the change description, and identify any affected work that needs
migration. Reviews and pre-release checks MUST assess changes against the principles above;
any exception MUST be documented with its reason and scope.

Constitution versions use semantic versioning: MAJOR for incompatible governance changes or
principle removals, MINOR for new principles or materially expanded requirements, and PATCH
for clarifications that do not change obligations.

**Version**: 1.1.0 | **Ratified**: TODO(RATIFICATION_DATE): Original adoption date is unknown | **Last Amended**: 2026-10-03
