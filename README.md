📊 Refined System Resource Monitoring Script

📝 Description

resource_monitor.sh is an enhanced version of the original System Health Monitoring Script. This refined version offers improved system resource tracking with better formatting and automation support. It monitors CPU usage, memory usage, disk space, logged-in users, and running processes. Additionally, it supports automated email alerts for system admins.

📌 Features

Improved CPU usage monitoring (shows top resource-consuming processes)

Enhanced memory and disk usage tracking

Refined output formatting for better readability

Email alert support for system reports

Automation ready (works with cron for scheduled monitoring)

🔧 Prerequisites

Ensure the following utilities are installed:

bash

ps, awk, free, df, lsblk, who

mailx (for email notifications, if enabled)

🚀 Usage

Make the script executable:

chmod +x Resource-monitor.sh

Run the script manually:

./resource_monitor.sh

Automate execution using cron:

crontab -e

Add the following line to run the script every hour and send a report via email:

0 * * * * /path/to/resource_monitor.sh | mail -s "System Health Report" your-email@example.com

📧 Email Notifications

The script can send reports via email if configured.

Ensure your mail server is set up before enabling email alerts.

📜 License

This project is licensed under the MIT License.

🤝 Contributing

Contributions are welcome! Feel free to submit a pull request.

📬 Contact

For questions or improvements, create an Issue in the repository or contact me at:
📧 b0900075@gmail.com
