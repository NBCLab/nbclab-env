NBCLab Environment Setup
======

Environment Setup
-----------------

## 1. Get a (Github)[https://github.com/] account

## 2. [Set up](https://help.github.com/articles/set-up-git/) Git on HPC
Perform steps 2-4 in **Setting up Git**.

## 3. Set up your ssh (key)[https://help.github.com/articles/generating-ssh-keys/]!
Follow steps 1 & 2 in 'github:help'

```bash
cat ~/.ssh/id\_dsa.pub
```
or

```bash
cat ~/.ssh/id\_rsa.pub
```
copy the key to your github account settings --> SSH Keys --> add SSH
key

## 4. Fork the (nbclab-env)[https://github.com/mattfeld/madlab_env] repository.
In a terminal:

```bash
cd place/to/keep/repository
git clone git@github.com/your_user_name/nbclab-env.git
cd nbclab-env
git remote add upstream https://github.com/mattfeld/madlab\_env.git**
```

## 5. Set up symlinks to the repository in your home folder

```bash
cd /place/of/repository
python setup.py
```

## 6. Make sure you have a symlinked .bash\_profile and .bashrc

```bash
cd
ls -la
```

## 7. Modify your ~/.ssh/config file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Test if SSH over the HTTPS port is possible, run this SSH command:

**>>> ssh -T -p 443 git@ssh.github.com**

You should see:

Hi username! You've successfully authenticated, but GitHub does not provide shell access.

Enabling SSH connections over HTTPS

**>>> vi ~/.ssh/config**

Add the following lines:

Host github.com
 Hostname ssh.github.com

 Port 443

## Examples

Set your project environment to the CMIND project:

**>>> cmind\_env**

You should see your prompt say "CMIND"

Create a pointer to the madlab\_env repostiroy for the latest project
environments:

**>>> cd /place/of/repository**

**>>> git fetch upstream**

**>>> git merge upstream/master**

To add an enviornment to the madlab\_env repostiroy, make a separate
environment shell script in the .env (called .my\_project\_environment
in the example) in the madlab\_env repository folder. Then edit the
.projects file to add a function:

**function my\_project\_env()**

**{**

**source ~/.env/.my\_project\_environment**

**}**

Commit and push the file up to your repository

```bash
cd /place/of/madlab\_env/repo
git add .env/.my\_project\_environment
git add .projects
git commit -m "added my project's environment"
git push origin master
```
Test and send a pull request to mattfeld/madlab\_env for someone else to
review and merge your changes.

# GIT Tutorials
=============

Here are some great GIT tutorials:

`First tutorial <http://nyuccl.org/pages/gittutorial/>`__

`Second
tutorial <http://nbviewer.ipython.org/github/fperez/reprosw/blob/master/Version%20Control.ipynb>`__

