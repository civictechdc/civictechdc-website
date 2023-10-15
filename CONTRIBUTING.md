# Contributing to the Code for DC Website

Want to contribute to the Code for DC website? Awesome! We welcome pull requests from anyone who wants to help improve the project. Here are some steps to follow:

## Step 1: Create a new branch

Before you start working on a feature, it's best to create a new branch off of the `main` branch. This will allow you to work on your changes without messing with the main codebase. To create a new branch, run the following command in your terminal:
```bash
git checkout -b <your-new-branch-name>
```
Replace `<your-new-branch-name>` with the name you want to give your new branch.

## Step 2: Make changes to the code

Once you have a new branch, it's time to start making changes! Open the `Code for DC` repository in your favorite code editor or IDE, and start modifying files and adding new features.

## Step 3: Commit your changes

Once you've made some changes, commit them to your branch by running the following command in your terminal:
```bash
git add .
git commit -m "Your commit message goes here"
```
Be sure to include a meaningful commit message that describes what you changed and why. This will help others understand your changes when they review your PR.

## Step 4: Push your branch to your fork

Now that you have committed your changes, push them to your own fork of the `Code for DC` repository on GitHub. This will create a new remote branch with your changes. To do this, run the following command in your terminal:
```bash
git push origin <your-new-branch-name>
```
Replace `<your-new-branch-name>` with the name of your new branch.

## Step 5: Create a Pull Request

Once you have pushed your changes to your own fork, it's time to create a pull request! Go to the `Code for DC` repository on GitHub and click the "New pull request" button. Select the branch you want to merge (in this case, your new branch), add a title and description of your changes, and click "Create pull request."

## Step 6: Wait for feedback and address comments

Once you've created a pull request, it will initiate a CircleCI build that runs a series of checks on your changes. You can watch the build process in real-time on the `Code for DC` repository page. If there are any failures or issues with your code, you'll see them highlighted in the build results. Don't worry – this is a normal part of the contribution process! Just address any comments or requests from reviewers and resubmit your PR when you're ready.

## Step 7: Get merged!

Once a project maintainer has reviewed your changes and approved them, they'll merge your pull request into the `main` branch! An updated version of the website will automatically be deployed, and you can see the results in action at (Code for DC)[https://codefordc.org].

Thank you for contributing! If you have any questions or get stuck at any point, feel free to ask for help in the `#codefordc-website` slack channel. Happy coding!
