#!/bin/bash -l

# redirect output
exec 3>&1
exec &>> "/home/kristinariemer/ed2_results/out/9000000631/logfile.txt"

TIMESTAMP=`date +%Y/%m/%d_%H:%M:%S`
echo "Logging on "$TIMESTAMP

# host specific setup


# create output folder
mkdir -p "/home/kristinariemer/ed2_results/out/9000000631"
# no need to mkdir for scratch

# @REMOVE_HISTXML@ : tag to remove "history.xml" on remote for restarts, commented out on purpose


# flag needed for ubuntu
export GFORTRAN_UNBUFFERED_PRECONNECTED=yes

# see if application needs running
if [ ! -e "/home/kristinariemer/ed2_results/out/9000000631/history.xml" ]; then
  cd "/home/kristinariemer/ed2_results/run/9000000631"
  
  "/usr/local/bin/ed2.git" ""
  STATUS=$?
  if [ $STATUS == 0 ]; then
    if grep -Fq '=== Time integration ends; Total elapsed time=' "/home/kristinariemer/ed2_results/out/9000000631/logfile.txt"; then
      STATUS=0
    else
      STATUS=1
    fi
  fi
  
  # copy scratch if needed
  # no need to copy from scratch
  # no need to clear scratch

  # check the status
  if [ $STATUS -ne 0 ]; then
  	echo -e "ERROR IN MODEL RUN\nLogfile is located at '/home/kristinariemer/ed2_results/out/9000000631/logfile.txt'"
  	echo "************************************************* End Log $TIMESTAMP"
    echo ""
  	exit $STATUS
  fi

  # convert to MsTMIP
  echo "require (PEcAn.ED2)
model2netcdf.ED2('/home/kristinariemer/ed2_results/out/9000000631', 40.0637, -88.202, '2006/01/01', '2006/12/31', c('ebifarm.c4grass.doe_vd'))
" | R --vanilla
fi

# copy readme with specs to output
cp  "/home/kristinariemer/ed2_results/run/9000000631/README.txt" "/home/kristinariemer/ed2_results/out/9000000631/README.txt"

# run getdata to extract right variables

# host specific teardown


# all done
echo -e "MODEL FINISHED\nLogfile is located at '/home/kristinariemer/ed2_results/out/9000000631/logfile.txt'"
echo "************************************************* End Log $TIMESTAMP"
echo ""
