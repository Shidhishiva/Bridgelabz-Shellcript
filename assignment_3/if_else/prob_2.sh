#!/bin/bash

#Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false  otherwise.


echo "input the date"
read d
echo "input the month"
read m
case $m in
 "March") if [ $d -ge 20 -a $d -le 31 ]
          then
          echo "true"
          else
          echo "false"
          fi
 ;;
 "May") if [ $d -le 31 ]
        then
        echo "true"
        else
        echo "false"
        fi
 ;;
 "June") if [ $d -le 20 ]
         then
         echo "true"
         else
         echo "false"
         fi
 ;;
 *) echo "false"
 ;;
esac
