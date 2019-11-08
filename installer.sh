echo "Thank-you for choosing to install googleFinder"
echo -n "Are you sure you want to install googleFinder [Y/n]: "
read installApprove
if [ $installApprove == "Y" ] 
then
  echo "Okay, starting installation of googleFinder"
  echo -n "You will go throught a series of questions deciding what needs to be installed.  Would you like to install everything at once? [Y/n]"
  read installAll
  if [ $installAll == "Y" ]
  then
    echo "This option hasn't yet been created"
  else
    apt-get update
    apt-get upgrade
    echo "Is Python3 installed on your computer [Y/n]"
    read pythonInstalled
    if [ $pythonInstalled != "Y" ]
    then
      echo "Installing Python3"
      apt-get install python3
      echo "Python 3 Has finished installing."
    else
      echo "Okay, moving on"
    fi
  fi
else
  echo "Okay, exiting installing..."
fi
