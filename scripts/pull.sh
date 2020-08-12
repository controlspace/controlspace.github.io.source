cd ~/workspace/source
git pull
cd ~/workspace/output
git pull
cd ~/workspace/source
hexo generate


# in order to avoid giving user name and password everytime, execute the following commands... trick is to use ssh instead of https
# jbuddha:~/workspace/source (master) $ git remote set-url origin git@github.com:controlspace/controlspace.github.io.source.git
# jbuddha:~/workspace/output (master) $ git remote set-url origin git@github.com:controlspace/controlspace.github.io.git


# If SSH permission denied
# First start by setting up your own public/private key pair set. This can use either DSA or RSA, so basically any key you setup will work. On most systems you can use ssh-keygen.

# First you'll want to cd into your .ssh directory. Open up the terminal and run:
# cd ~/.ssh && ssh-keygen
# Next you need to copy this to your clipboard.
#     On OS X run: cat id_rsa.pub | pbcopy
#     On Linux run: cat id_rsa.pub | xclip
#     On Windows (via Cygwin/Git Bash) run: cat id_rsa.pub | clip
# Add your key to your account via the website.
# Finally setup your .gitconfig.
# git config --global user.name "bob"
# git config --global user.email bob@... (don't forget to restart your command line to make sure the config is reloaded)
# Thats it you should be good to clone and checkout.
