#!/bin/bash
logCleanUp(){
        echo `date`
        AvailableSpace=`df -h| awk 'NR==2 {print $4}'`
        echo "AvailableSpace: $AvailableSpace"

        cd /logdir/
        total=`ls * |wc -l`
        if [ $total -ge 0 ]; then

                echo "log files count"
                echo $total
                echo "clean up action in progress"
        #  rm /logdir/*.log
        else
                echo "No log-file to delete"
                exit 1
        fi
        AvailableSpace=`df -h| awk 'NR==2 {print $4}'`
        echo "AvailableSpace: $AvailableSpace"
}
logCleanUp >> cleanUp.log
echo "The previous function has a return value of $?"
