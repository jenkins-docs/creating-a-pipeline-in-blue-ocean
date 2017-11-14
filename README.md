# creating-a-pipeline-in-blue-ocean

This repository is for the
[Creating a Pipeline in Blue Ocean](https://jenkins.io/doc/tutorials/creating-a-pipeline-in-blue-ocean/)
tutorial in the [Jenkins User Documentation](https://jenkins.io/doc/).

The repository contains a simple Node.js and React application which generates
a web page with the content "Welcome to React" and is accompanied by a test to
check that the application renders satisfactorily.

The `jenkins` directory contains an example of the `Jenkinsfile` (i.e. Pipeline)
that Blue Ocean will create for you during the tutorial and the `scripts`
subdirectory contains shell scripts with commands that are executed when Jenkins
processes the "Test" and "Deliver" stages of your Pipeline.
