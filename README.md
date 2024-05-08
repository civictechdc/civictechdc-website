# Civic Tech DC Website

Welcome! This is the repository for the website for Civic Tech DC. It is a static site built with [Jekyll](https://jekyllrb.com/). It is mostly HTML, Javascript, and CSS.

## Getting Started

### Quickstart with Codespaces

[Github Codespaces](https://github.com/features/codespaces) is a free development environment based on VS Code that is run entirely in the browser. You can have your own copy of the Civic Tech DC Website up and running in a few clicks.

1. Click "Fork" to make your own copy of the repository  
   ![image](https://github.com/mchelen/codefordc-website/assets/30691/307cfd28-64cf-4178-9478-886736491036)
2. Click "Create codespace on main"  
   ![image](https://github.com/mchelen/codefordc-website/assets/30691/3bb1583d-c27f-41c0-9548-b9a76d21143c)
3. Wait while your new Codespace starts, the dependencies will be installed and the web server will start automatically.  
   ![image](https://github.com/mchelen/codefordc-website/assets/30691/409df32b-18b4-4376-b12a-fec61416349a)
4. Click "Open in browser" to see your website running live! Click "Make public" if you would like to share with another user.  
   ![image](https://github.com/mchelen/codefordc-website/assets/30691/8e764732-cdfa-48c5-84c4-a853b58b14d1)
5. You can now modify the code and the website will automatically update.
6. Commit your changes as usual, and open a pull request when ready to share back with the team.

### Local Development

1. First, make sure that you have <a href="https://git-scm.com/downloads">git</a> on your computer. Create your own <a href="https://docs.github.com/en/get-started/quickstart/contributing-to-projects">fork</a> of the repository, then clone it to your computer:

`git clone git@github.com:[YOUR GITHUB NAME]/codefordc-website`

2. Now, install the correct version of Ruby.

We use [asdf](https://asdf-vm.com/) and its [ruby plugin](https://github.com/asdf-vm/asdf-ruby) to configure Ruby for this project. You can see which version of Ruby we're using in the [.tool-versions](.tool-versions) file.

First, if you're on Ubuntu, you may need to install some dependencies. If the `install` step doesn't work, try one or both of these commands:

```
sudo apt install libyaml-dev
sudo apt install libffi-dev
```

To install the Ruby plugin, run the following commands inside the project's directory:

```
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install
```

3. Install required gems.

`bundle install`

4. Run a local version of the website.

This command will run `gulp` as a background process and then jekyll as a foreground process.

`bundle exec gulp & bundle exec jekyll serve`

5. Open a web browser page at `localhost:4000`

## Issues

If you notice a problem or have an idea for an improvement you can submit an [issue](https://github.com/civictechdc/codefordc-website/issues).

## Contributing

Refer to the [contribution instructions](CONTRIBUTING.md) to contribute to this project. We have a [project board](https://github.com/orgs/civictechdc/projects/3) where we track issues and ideas to be implemented.

Let us know if you get stuck in the Civic Tech DC Slack channel #civictechdc-website. Happy coding!
