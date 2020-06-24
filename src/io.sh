#!/bin/bash

# -----------------------------------------------
# Option Parsing function for:
# -i<1..n> [files.. ] -p<1..n> {values} -o<1..n> [files.. ]
# {-iX fileX} {-pX valueX} {-oX fileX}
#
#
# - Please pass 3 Arguments to this script
#   - Arg1: Number of Inputs expected
#   - Arg2: Number of Parameters expected
#   - Arg3: Number of Outputs expected
# -----------------------------------------------

INUM=$1; shift
PNUM=$1; shift
ONUM=$1; shift

set_variables()
{
    for ((i=1; i<=INUM; i++)); do typeset ICOUNT$i=0; done
    for ((i=1; i<=PNUM; i++)); do typeset PCOUNT$i=0; done
    for ((i=1; i<=ONUM; i++)); do typeset OCOUNT$i=0; done
}

IFLAG=();
PFLAG=();
OFLAG=();
reset_flags()
{
    for ((j=1; j<=INUM; j++)); do IFLAG[$j]='0'; done
    for ((j=1; j<=PNUM; j++)); do PFLAG[$j]='0'; done
    for ((k=1; k<=ONUM; k++)); do OFLAG[$k]='0'; done
}

set_variables
reset_flags

while [ $# -gt 0 ]
do
    case "$1" in
        -i*) in=$(echo $1 | cut -di -f2); reset_flags; IFLAG[$in]='1';;
        -p*) pa=$(echo $1 | cut -dp -f2); reset_flags; PFLAG[$pa]='1';;
        -o*) op=$(echo $1 | cut -do -f2); reset_flags; OFLAG[$op]='1';;
        --) shift; break;;
        *)  for((ind=1; ind<=INUM; ind++)); do
                if [ "${IFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${INPUTS[$ind]}" != "" ]; then x="|"; fi
                    INPUTS[$ind]="${INPUTS[$ind]}$x$1"
                fi
            done
            for((ind=1; ind<=PNUM; ind++)); do
                if [ "${PFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${PARAM[$ind]}" != "" ]; then x="|"; fi
                    PARAMS[$ind]="${PARAMS[$ind]}$x$1"
                fi
            done
            for((ind=1; ind<=ONUM; ind++)); do
                if [ "${OFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${OUTPUTS[$ind]}" != "" ]; then x="|"; fi
                    OUTPUTS[$ind]="${OUTPUTS[$ind]}$x$1"
                fi
            done;;
    esac
    shift
done

IFS='|'
for ((i=1; i<=INUM; i++)); do typeset INPUTS$i=$(echo ${INPUTS[$i]}); done
for ((i=1; i<=PNUM; i++)); do typeset PARAMS$i=$(echo ${PARAMS[$i]}); done
for ((i=1; i<=ONUM; i++)); do typeset OUTPUTS$i=$(echo ${OUTPUTS[$i]}); done
IFS=' '

txtinout_zip=${INPUTS1}
export txtinout_zip
pcp1_pcp=${INPUTS2}
export pcp1_pcp



## PARAMETERS VARIABLES
SFTMP=${PARAMS1}
export  SFTMP
SMTMP=${PARAMS2}
export  SMTMP
SMFMX=${PARAMS3}
export  SMFMX
SMFMN=${PARAMS4}
export  SMFMN
TIMP=${PARAMS5}
export  TIMP
START_YEAR=${PARAMS6}
export  START_YEAR
YEARS=${PARAMS7}
export  YEARS


find . -maxdepth 1 -name '*.zip' -execdir unzip '{}' ';'


## PARAMETERS VARIABLES
if [ ! -f TxtInOut/file.cio.bk ]; then
  cp TxtInOut/file.cio TxtInOut/file.cio.bk
fi

envsubst < TxtInOut/file.cio.bk> TxtInOut/file.cio
rm TxtInOut/file.cio.bk
if [ ! -f TxtInOut/basins.bsn.bk ]; then
  cp TxtInOut/basins.bsn TxtInOut/basins.bsn.bk
fi

envsubst < TxtInOut/basins.bsn.bk> TxtInOut/basins.bsn
rm TxtInOut/basins.bsn.bk


