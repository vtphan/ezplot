INSTALL_DIR="$HOME/bin"
if hash Rscript 2>/dev/null; then
   if hash curl 2>/dev/null; then
      SCRIPT=`which Rscript`
      echo "script is" $SCRIPT
      if [ ! -d $INSTALL_DIR ]; then
         echo "$INSTALL_DIR does not exist.  Create $INSTALL_DIR"
         mkdir $INSTALL_DIR
      fi
      echo "Download and install R scripts."
      cd $INSTALL_DIR
      echo "#!$SCRIPT" > $INSTALL_DIR/ezplot.R
      curl -s https://raw.githubusercontent.com/vtphan/ezplot/master/ezplot.R >> $INSTALL_DIR/ezplot.R
      chmod u+x ezplot.R

      if [[ ":$PATH:" == *":$INSTALL_DIR:"* ]]; then
         echo "$INSTALL_DIR is in PATH"
      else
         echo "Adding $INSTALL_DIR to PATH"
         echo "export PATH=$PATH:$INSTALL_DIR" >> $HOME/.bashrc
         source $HOME/.bashrc
      fi
      echo "ezplot.R is now installed in $INSTALL_DIR, which is in your PATH.  Open a new terminal.  These scripts are now accessible in any directory."
   else
      echo "curl is not installed. You need to save the R scripts to $INSTALL_DIR and execute the command 'chmod +u *.R' in $INSTALL_DIR."
   fi
else
   echo "R is not installed."
fi