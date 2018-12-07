# Osmundson Apartments
Ruby on Rails web page for Osmundson Apartments

## Set Up
1. In order to set up your own version of this git repo, you must first have a Cloud9 Account:[Cloud9](https://c9.io/login)
2. Create a new workspace in Cloud9. Fill in the various field with what you would like, except the template needs to be 'Blank'.
3. Once in your workspace, you are going to type the following commands into the terminal that should be in the /workspace directory.
   * `git clone https://github.com/IT484-Red-Team/osmundson-apts.git`
   * `gem install bundler`
   * `cd osmundson-apts`
   * `bundle install`
   * `rails db:migrate`
   * `rails db:seed`
4. You are now set up to run the app. To start the app, run the following command:
   * `rails server -p $PORT -b $IP`
5. A pop-up should appear giving you the link to your webpage that is now running on your Cloud9 instance.
  The link should be in the form of: https://ide.c9.io/{your_username}/{name_of_your_workspace}
6. Also, you maybe me met with a page that has a button that says 'Go to my app' or something of the sorts. If that appears, just click that button and you will be led to the actual webpage.
