# Osmundson Apartments
Ruby on Rails web page for Osmundson Apartments

## Set Up
1. In order to set up your own version of this git repo, you must first have a Cloud9 Account.
2. Create a new workspace in Cloud9. Fill in the various field with what you would like, except the template needs to be 'Blank'.
3. Once in your workspace, you are going to type the following commands into the terminal that should be in the /workspace directory.
   * `git clone https://github.com/IT484-Red-Team/osmundson-apts.git`
   * `gem install bundler`
   * `cd osmundson-apts`
   * `git checkout dev`
   * `bundle install`
   * `rails db:migrate`
   * `rails server -p $PORT -b $IP`
