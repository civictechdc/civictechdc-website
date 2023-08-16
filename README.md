# Code for DC Website

Welcome! This is the repository for the website for Code for DC.

## Getting Started

1. First, make sure that you have <a href="https://git-scm.com/downloads">git</a> on your computer. Create your own <a href="https://docs.github.com/en/get-started/quickstart/contributing-to-projects">fork</a> of the repository, then clone it to your computer:

git clone git@github.com:[YOUR GITHUB NAME]/codefordc-website

1. Now, install the correct version of Ruby. As of March 2023, we are using Ruby 3.2.0. You can use [asdf](https://asdf-vm.com/) and its [ruby plugin](https://github.com/asdf-vm/asdf-ruby) to configure Ruby 3.2.0 for this repository with:

`asdf install ruby 3.2.0`
`asdf local ruby 3.2.0`

1. Install required gems.

`bundle install`

1. Get the site running on your local server. The previous step will have installed [Jekyll](https://jekyllrb.com/).  

`bundle exec jekyll serve`

1. Open a web browser page at `localhost:4000`

## Contributing

Refer to the [contribution instructions](CONTRIBUTING.md) to contribute to this project.

Let us know if you get stuck in the Code for DC Slack channel #codefordc-website. Happy coding!
