
# Civic Tech DC Website

Welcome! This is the repository for the website for Civic Tech DC. It is a static site built with [Jekyll](https://jekyllrb.com/). It is mostly HTML, Javascript, and CSS.

## Getting Started

1. First, make sure that you have [git](https://git-scm.com/downloads) on your computer. Create your own [fork](https://docs.github.com/en/get-started/quickstart/contributing-to-projects) of the repository, then clone it to your computer:

   ```
   git clone git@github.com:[YOUR GITHUB NAME]/codefordc-website
   ```

2. Now, install the correct version of Ruby.

   ### For Mac Users
   
   We use [asdf](https://asdf-vm.com/) and its [ruby plugin](https://github.com/asdf-vm/asdf-ruby) to configure Ruby for this project. You can see which version of Ruby we're using in the [.tool-versions](.tool-versions) file.

   To install the Ruby plugin, run the following commands inside the project's directory:

   ```
   asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
   asdf install
   ```

   ### For Windows Users

   Windows users should use the Windows Subsystem for Linux (WSL) to create a compatible environment for [asdf](https://asdf-vm.com/) and its [ruby plugin](https://github.com/asdf-vm/asdf-ruby).

   - **Install WSL**:

     Open Command Prompt as Administrator and run:

     ```
     wsl --install
     ```

     Restart your computer when prompted.

   - **Install Remote Development on VS Code** to work with WSL directly from your editor. (not required)

   - **Install Dependencies** (after setting up WSL and choosing your Linux distribution, e.g., Ubuntu):
     
     Open a new Ubuntu session on the Command Prompt and run:

     ```
     sudo apt install libyaml-dev libffi-dev
     ```

   - **Install Ruby**:

     First, add the Ruby plugin, then install the correct version of Ruby as specified in the `.tool-versions` file:

     ```
     asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
     asdf install
     ```

     If `asdf install` fails, configure OpenSSL and try again:

     ```
     export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/home/linuxbrew/.linuxbrew/Cellar/openssl@3/3.2.0"
     asdf install ruby 3.2.0
     ```

3. Install required gems.

   ```
   bundle install
   ```

4. Run a local version of the website.

   ```
   bundle exec jekyll serve
   ```

5. Open a web browser page at `localhost:4000`

## Issues

If you notice a problem or have an idea for an improvement you can submit an [issue](https://github.com/civictechdc/codefordc-website/issues).

## Contributing

Refer to the [contribution instructions](CONTRIBUTING.md) to contribute to this project. We have a [project board](https://github.com/orgs/civictechdc/projects/3) where we track issues and ideas to be implemented.

Let us know if you get stuck in the Civic Tech DC Slack channel #civictechdc-website. Happy coding!
