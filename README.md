# Code for DC Website

Welcome! This is the repository for the website for Code for DC.

## Getting Started

1. First, make sure that you have <a href="https://git-scm.com/downloads">git</a> on your computer. Create your own <a href="https://docs.github.com/en/get-started/quickstart/contributing-to-projects">fork</a> of the repository, then clone it to your computer:

git clone git@github.com:[YOUR GITHUB NAME]/codefordc-2.0.git

2. You can work on the master branch (which is the default), but it's preferable to set up a new branch if you're working on a specific feature:

`git checkout -b [NEW BRANCH NAME]`

3. Now, install the correct version of Ruby. As of March 2023, we are using Ruby 3.2.0.

`asdf install ruby 3.2.0`
`asdf local ruby 3.2.0`

4. Install required gems.

`bundle install`

5. Install Jekyll globally.

NOTE: Is this required, or will bundle install cover it?

6. Get the site running on your local server. 

`bundle exec jekyll serve`

7. Open a web browser page at `localhost:4000`

Let us know if you get stuck in the Code for DC Slack channel #codefordc-website. Happy coding!
