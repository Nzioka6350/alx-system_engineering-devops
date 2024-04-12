# Web Stack Outage Postmortem

## Issue Summary
- **Duration**: April 10, 2024, 08:00 AM - April 10, 2024, 10:30 AM (UTC)
- **Impact**: The web application was inaccessible to 80% of users during the outage, resulting in service disruption and user frustration.
- **Root Cause**: The outage was caused by a misconfigured firewall rule blocking incoming traffic to the application server.

## Timeline
- **08:00 AM**: Issue detected by monitoring alert indicating a spike in server errors.
- **08:05 AM**: Engineers received automated alerts regarding the server errors.
- **08:10 AM**: Initial investigation focused on application logs and database performance.
- **08:30 AM**: Assumed root cause to be database overload due to recent code deployment.
- **09:00 AM**: Further investigation revealed no database issues, shifting focus to network configurations.
- **09:30 AM**: Discovered a misconfigured firewall rule blocking incoming traffic.
- **09:45 AM**: Incident escalated to network infrastructure team for immediate action.
- **10:00 AM**: Firewall rule corrected, and traffic resumed to normal levels.
- **10:30 AM**: Web application restored to full functionality.

## Root Cause and Resolution
- **Root Cause**: The outage was caused by a misconfigured firewall rule that blocked incoming traffic to the application server. This resulted in the server rejecting legitimate user requests, leading to service disruption.
- **Resolution**: The misconfigured firewall rule was identified and corrected by the network infrastructure team. Once the rule was adjusted to allow incoming traffic, normal service resumed.

## Corrective and Preventative Measures
- **Improvements/Fixes**:
  - Regular review and auditing of firewall rules to prevent misconfigurations.
  - Implementation of automated testing for firewall rule changes to detect errors before deployment.
- **Tasks**:
  1. Conduct a comprehensive review of all firewall rules to ensure accuracy and relevance.
  2. Implement automated testing scripts to validate firewall rule changes before deployment.
  3. Schedule regular training sessions for the network infrastructure team to enhance their knowledge of firewall management best practices.

---

# README

## Introduction
This repository contains a postmortem document detailing the root cause, timeline, and resolution of a recent web stack outage. The purpose of this document is to provide insights into the incident, its impact, and the measures taken to address and prevent similar incidents in the future.

## Contents
- **Postmortem Document**: Contains a detailed analysis of the outage, including its duration, impact, root cause, timeline, resolution, and corrective/preventative measures.
- **README**: Provides an overview of the postmortem document and its significance.

## Usage
To view the postmortem document, simply access the "Postmortem Document" file in this repository.

## Contributing
Contributions to improving the postmortem document or implementing corrective/preventative measures are welcome. Please submit pull requests with detailed explanations of the proposed changes.

## License
This repository and its contents are licensed under the MIT License. See the LICENSE file for more details.
