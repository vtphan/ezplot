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

- Download ezplot, edit the first line to reflect the correct location of Rscript.
- chmod u+x ezplot
- Move ezplot into a directory in your executable PATH.  Alternately, you can use Rscript to run ezplot.

USAGE
-----

(1) Plot distribution of one variable (x), with an optional categorical variable (c).
```
   ezplot data.csv x [c]
```

(2) Plot a [quantitative/categorical](http://www.usablestats.com/lessons/datatypes) variable (x) against a quantitative variable (y), with an optional categorical variable (c).
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
This will create 4 plots to present these two variables in 4 different perspectives.

<img src="images/31.png" width="410">
<img src="images/32.png" width="410">
<img src="images/33.png" width="410">
<img src="images/34.png" width="410">

Categorized comparisons in terms of species.
```
   ezplot iris.csv Petal.Width Petal.Length Species
```
This will create 4 plots, classified into different "Species", to present the two variables in 4 different perspectives.

<img src="images/21.png" width="410">
<img src="images/22.png" width="410">
<img src="images/23.png" width="410">
<img src="images/24.png" width="410">

Note that Petal.Width, Petal.Length, and Species are column names, specified in [the dataset](data/iris.csv).
The output is output1.png, output2.png, output3.png, and output4.png.  Some of these figures make more sense than the others.

