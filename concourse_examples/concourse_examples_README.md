
cd ci_playground/concourse_examples/ci/tasks/task-static
fly -t simple-example execute --config task.yml --input ci-repo=/Users/sdillikar/macos-home/github/ci_playground/
fly -t simple-example execute --config task.yml --input ci-repo=./../../../..

cd ci_playground/concourse_examples/ci/tasks/task-create-and-consume
fly -t simple-example execute --config make-a-file-task.yml
fly -t simple-example execute --config consume-the-file-task.yml --input files=.


fly -t simple-example unpause-pipeline -p simple-pipeline
fly -t simple-example unpause-job --job simple-pipeline/task-static

fly -t simple-example trigger-job  --job simple-pipeline/task-static --watch
fly -t simple-example trigger-job  --job simple-pipeline/task-create-and-consume --watch

fly -t simple-example destroy-pipeline -p simple-pipeline