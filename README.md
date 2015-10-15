NBCLab Environment Setup
======

Environment Setup
-----------------

### 1. Get a [Github](https://github.com/) account

### 2. [Set up](https://help.github.com/articles/set-up-git/) Git on HPC
Perform steps 2-4 in **Setting up Git**.

### 3. Set up your ssh [key](https://help.github.com/articles/generating-ssh-keys/)!
- Follow steps 1 & 2 in 'github:help'.

```bash
cat ~/.ssh/id_dsa.pub
```

or

```bash
cat ~/.ssh/id_rsa.pub
```

 - Copy the key to your github account settings --> SSH Keys --> add SSH key
### 4. Modify your ~/.ssh/config file
 1. Test if SSH over the HTTPS port is possible. Run this SSH command:

```bash
ssh -T -p 443 git@ssh.github.com
```

You should see:

> Hi username! You've successfully authenticated, but GitHub does not provide shell access.

- Enable SSH connections over HTTPS

```bash
nano ~/.ssh/config
```

Add the following lines:  
> Host github.com  
> Hostname ssh.github.com  
> Port 443  

### 5. Fork the [nbclab-env](https://github.com/NBCLab/nbclab-env) repository.
- In a terminal:

```bash
cd place/to/keep/repository
git clone https://github.com/nbclab/nbclab-env.git
cd nbclab-env
git remote add upstream https://github.com/nbclab/nbclab-env.git
```

### 6. Symlink .projects to your home directory
- In a terminal:
```bash
ln -s /place/of/repository/.projects ~/
```

### 7. Modify .bashrc to source .projects and show environment name
- Add in:
```bash
source ~/.projects

prompt1="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\]"
PROMPT_COMMAND='PS1="\[\e[1;37m\e[44m\]${project_name}\[\e[0;0m\]${prompt1} "'
```



## Examples

Set your project environment to the ADHD project:

```bash
adhd_env
```

You should see your prompt say "[ADHD]". Create a pointer to the madlab_env repository for the latest project environments:

```bash
cd /place/of/repository
git fetch upstream
git merge upstream/master
```

To add an environment to the nbclab-env repository, make a separate environment shell script in the .env (called .my_project_environment in the example) in the nbclab-env repository folder. Then edit the .projects file to add a function:

```bash
function my_project_env()
{
  
source /place/of/project/envs/bash_environment
  
}
```

Commit and push the file up to your repository

```bash
cd /place/of/nbclab-env/repo
git add .env/.my_project_environment
git add .projects
git commit -m "added my project's environment"
git push origin master
```
Test and send a pull request to nbclab/nbclab-env for someone else to review and merge your changes.

## GIT Tutorials
Here are some great GIT tutorials:  
- [First tutorial](http://nyuccl.org/pages/gittutorial/)  
- [Second tutorial](http://nbviewer.ipython.org/github/fperez/reprosw/blob/master/Version%20Control.ipynb)  
