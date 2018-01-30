# Erstellen der Pipeline
# fly -t lite set-pipeline -p pipe-skript04 -c pipeline.yml 

# Triggern einers Jobs
fly -t lite trigger-job -j pipe-skript04/job-exec-script

# Ausgabe des Outputs auf das Terminal (task-name/job-name) 
fly -t lite watch -j pipe-skript04/job-exec-script 
