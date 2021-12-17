#!/bin/bash -x
echo  Enter length of plot 
read length 
echo Enter Breadth of plot
read breadth
plotAreainsqft=$((length*breadth))
echo Area of plot in sqarefeet is $plotAreainsqft
plotAreainsqm=`echo "scale=3; $plotAreainsqft/10.76" | bc`
echo Area of plot in squaremeter is $plotAreainsqm 
plotAreainAcre=`echo "scale=3; $plotAreainsqm/4046" | bc`
echo Area of plot in Acre is $plotAreainAcre
echo Total number of plots
read totalNumOfPlots
totalAreaOfPlots=`echo "scale=3; $plotAreainAcre*$totalNumOfPlots" | bc`
echo Total Area of all plots in Acre is $totalAreaOfPlots
 

