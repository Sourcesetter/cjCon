fly -t lite sp -p pipelineJobs-cj -c pipeline.yml --var "git-key=$(cat /Users/c.john/.ssh/privGit)" --var "gist-uri=git@gist.github.com:c4dc087fa6934e61a17b75fbf152dd2b.git"
fly -t lite check-resource -r publishing-outputs/resource-gist
