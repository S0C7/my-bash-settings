# Bash profile
M2_HOME=$MY_HOME/ws/apps/apache-maven-3.6.0
PYTHON3=$MY_HOME/Library/Python/3.7
SPARK_HOME=$MY_HOME/ws/apps/spark-2.4.0-bin-hadoop2.7

PATH=$PATH:$M2_HOME/bin
PATH=$PATH:$PYTHON3/bin
PATH=$PATH:$SPARK_HOME/bin

# Source my bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
