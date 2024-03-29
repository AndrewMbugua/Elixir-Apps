#! /bin/bash

# Setup ASDF,a version manager for elixir & Erlang
sudo apt install curl git  && git clone https://github.com/asdf-vm/asdf.git ~/.asdf      # on Linux


# Configure shell,in this case, sh
. $HOME/.asdf/asdf.sh

# Install plugins
asdf plugin add erlang
asdf plugin add elixir
asdf install

# Install Erlang 23.2.1 && Elixir 1.12.2-otp-23 for compatibiltiy as per the Phoenix doc.
asdf install erlang 23.2.1
asdf install elixir 1.12.2-otp-24

#Set versions globally
asdf global erlang 23.2.1
asdf global elixir 1.12.2-otp-23

