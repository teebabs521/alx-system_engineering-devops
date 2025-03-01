Issue Summary

    Duration: October 10, 2023, from 14:00 UTC to 16:30 UTC.

    Impact: API service down, 100% outage, 10,000 users affected, HTTP 500 errors.

    Root Cause: Database connection pool exhaustion due to traffic spike.

Timeline

    14:00 UTC: Issue detected via monitoring alert.

    14:05 UTC: Engineering team investigation began.

    14:15 UTC: Assumed server overload; scaled API servers.

    14:30 UTC: Database team alerted.

    14:45 UTC: Misleading path: Suspected DDoS attack; implemented rate-limiting.

    15:00 UTC: Escalated to DevOps team.

    15:30 UTC: Root cause identified (connection pool exhaustion).

    16:00 UTC: Increased connection pool size, restarted API.

    16:30 UTC: Issue resolved.

Root Cause and Resolution

    Root Cause: Database connection pool limit (100 connections) exceeded during traffic spike.

    Resolution: Increased pool size to 500, restarted API, optimized database.

Corrective and Preventative Measures

    Improvements:

        Optimize database connection settings.

        Add monitoring for connection pool usage.

        Conduct regular load testing.

    Tasks:

        Increase connection pool size to 500.

        Add alert for connection pool usage > 80%.

        Perform load testing for traffic spikes.

        Document incident and share learnings.

![Postmortem Diagram](postmorterm_technical.webp)
![Postmortem Diagram](postmoterm_flow_chart.webp)
