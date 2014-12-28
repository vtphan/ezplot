INSTALL_DIR="$HOME/bin"
if hash Rscript 2>/dev/null; then
   if hash curl 2>/dev/null; then
      if [ ! -d $INSTALL_DIR ]; then
         echo "$INSTALL_DIR does not exist.  Create $INSTALL_DIR"
         mkdir $INSTALL_DIR
      fi
      SCRIPT=`which Rscript`
      echo "Installing..."
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
      echo "ezplot.R is installed in $INSTALL_DIR.  Try ezplot.R in a new terminal."
   else
      echo "curl is not installed. Try manual installation."
   fi
else
   echo "R is not installed."
fi