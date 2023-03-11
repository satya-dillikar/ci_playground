
fly -t simple-example execute --config task.yml --input ci-repo=/Users/sdillikar/macos-home/github/ci_playground/


fly -t simple-example execute --config make-a-file-task.yml

fly -t simple-example execute --config consume-the-file-task.yml --input files=.