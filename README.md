NBCLab Environment Setup
======

Environment Setup
-----------------

### 1. Follow the instructions [here](https://help.github.com/en/articles/connecting-to-github-with-ssh) to set up git on the HPC

### 2. Modify .bashrc to source .projects and show environment name
- Add in:
```bash
source /home/data/nbc/nbclab-env/.projects

prompt1="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\]"
PROMPT_COMMAND='PS1="\[\e[1;37m\e[44m\]${project_name}\[\e[0;0m\]${prompt1} "'
```

You can use the example bashrc file in this repository to help you modify your own .bashrc file.

### 3. Download and add MKL license to your home folder
Nipype and other essential Python modules (e.g. numpy, scipy, scikit-learn) use Continuum Analytics' MKL optimization, which is proprietary and costs money. Fortunately, Continuum provides free academic researchers. Following is the process for obtaining a license and properly adding it to your home directory so you can use MKL-optimized modules.

1. Go to [this website](https://www.continuum.io/anaconda-academic-subscriptions-available) and sign up for an account. Then follow the instructions to download and organize a license.
2. The only note we want to make here is that, if you're using Safari, the license may download as an HTML document instead of a text document. Simply removing the .html extension will not fix this.
  - At the moment, the best way we know of to deal with this is to just download the license using a different web browser (Firefox works).

## Examples

### 1. Set your project environment to the ADHD project:

```bash
adhd_env
```

You should see your prompt say "[ADHD]". Create a pointer to the nbclab-env repository for the latest project environments:

```bash
cd /place/of/repository
git fetch upstream
git merge upstream/master
```

### 2. Create a new environment

1. Create environment folder in project folder (e.g. /home/data/nbc/adhd/adhd/**envs**/).
2. Copy example bash_environment from nbclab-env folder to project environment folder.
3. Edit bash_environment with project-specific settings (specify versions of FSL, AFNI, SPM, etc.). Make sure it source activates the right miniconda environment (which you'll set up in the next step).
4. Copy example generate_miniconda_env.sh to project environment folder.
5. Edit generate_miniconda_env.sh with project-specific settings (specify which Python modules you'll need and which version of each). Also make sure paths point to project environment folder.
6. Run generate_miniconda_env.sh.
7. You should now have Python and bash environments for your project! Now just add the necessary info to the nbclab-env repository so everyone can use them (via .projects).

### 3. Add an environment to nbclab-env

- To add an environment to the nbclab-env repository, make a separate environment shell script in the .env (called .my_project_environment in the example) in the nbclab-env repository folder. Then edit the .projects file to add a function:

```bash
function my_project_env()
{
source /place/of/project/envs/bash_environment
}
```

- Commit and push the file up to your repository

```bash
cd /place/of/nbclab-env/repo
git add .env/.my_project_environment
git add .projects
git commit -m "added my project's environment"
git push origin master
```

- Test and send a pull request to nbclab/nbclab-env for someone else to review and merge your changes.
  
  
  
## GIT Tutorials
Here are some great GIT tutorials:  
- [NYUCCL](http://nyuccl.org/pages/gittutorial/)  
- [FPerez](http://nbviewer.ipython.org/github/fperez/reprosw/blob/master/Version%20Control.ipynb)
- [Codecademy](https://www.codecademy.com/learn) (interactive)
