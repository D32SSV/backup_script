# backup_script
Shell script for taking and deleting backup of mongo db 


#For manually testing script use  ```chmod +x /file_path```
#Below is the crontab command which can be written using ```crontab -e``` , for executing the script and taking logs
```0 */6 * * * /file_path_of_script >> /file_path_of_logs 2>&1```