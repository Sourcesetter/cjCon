# Erstellen der Pipeline
# fly -t lite set-pipeline -p pipe-skript05 -c pipeline.yml 

# Triggern einers Jobs
# fly -t lite trigger-job -j pipe-skript05/job-exec-script

# Ausgabe des Outputs auf das Terminal (task-name/job-name) 
fly -t lite watch -j pipe-skript05/job-exec-script 
