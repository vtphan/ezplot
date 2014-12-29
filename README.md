ezplot is a command-line tool, written in R.  It takes as input a column-formated file and produces several figures/charts. It is meant to facilitate quick analyses of data.

REQUIREMENT
-----------

- Rscript (front end of R)
- ggplot2 library.

QUICK INSTALLATION
------------------

- Require (i) bash shell, (ii) curl
- Download install script: [install.sh](install.sh)
- From command prompt, run "bash install.sh".  This will put ezplot.R into your $HOME/bin directory, make it executable and add the directory to your PATH so you can access ezplot.R directly from any directory.

MANUAL INSTALLATION
-------------------

- Download ezplot.R, edit the first line to reflect the correct location of R
- chmod u+x ezplot.R
- Move ezplot.R in your executable PATH.

USAGE
-----

Plot of distributions of one variable (x).   Categorical variable (c) is optional.
```
   ezplot data.csv x [c]
```

Plot x versus y with optional (c) categorical variable.   Possible comparisons: (i) quantitative versus quantitative, (ii) categorical versus quantitative.

```
   ezplot data.csv x y [c]
```

x, y, and c are column names as appeared in the header of data.csv.  The data file should be in comma-separated format (with .csv extension) or tab-separated format (.tsv extension).

EXAMPLES
--------

Compare petal width and length from [the iris dataset](http://en.wikipedia.org/wiki/Iris_flower_data_set).
```
   ezplot iris.csv Petal.Width Petal.Length
```

Categorized comparisons in terms of species.
```
   ezplot iris.csv Petal.Width Petal.Length Species
```

Note that Petal.Width, Petal.Length, and Species are column names, specified in [the dataset](data/iris.csv).
The output is output1.png, output2.png, output3.png, and output4.png.  Some of these figures make more sense than the others.

