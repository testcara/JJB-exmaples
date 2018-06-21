#!/bin/bash
# to ignore the python http verification
export PATHONHTTPSVERIFY=0
# make sure virtualenv has been installed on your env
virtualenv jjb_project_virtualenv
source jjb_project_virtualenv/bin/activate
pip install -r requirement.txt
jenkins-jobs --conf etc/jenkins_jobs.ini test monitor_ci_slaves.yaml
