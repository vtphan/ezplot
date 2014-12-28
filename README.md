ezplot takes as input a column-formated file and produces several plots. The purpose is to provide very quick analyses of data.

REQUIREMENT
===========

- R
- ggplot2

QUICK INSTALLATION
==================

- Require (i) bash shell, (ii) curl
- Download install script: [install.sh](install.sh)
- From command prompt, run "bash install.sh"

MANUAL INSTALLATION
===================

- Download ezplot.R, edit the first line to reflect the correct location of R
- chmod u+x ezplot.R
- Move ezplot.R in your executable PATH.

USAGE
=====

Plot of distributions of one variable (x).   Categorical variable (c) is optional.
```
   ezplot.R data.csv x [c]
```

Plot x versus y with optional (c) categorical variable.   Possible comparisons: (i) quantitative versus quantitative, (ii) categorical versus quantitative.

```
   ezplot.R data.csv x y [c]
```

x, y, and c are column names as appeared in the header of data.csv.

