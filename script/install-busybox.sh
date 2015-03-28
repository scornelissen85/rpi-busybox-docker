#!/bin/busybox sh

BUSYBOX_BIN=/bin/busybox

for I in $(${BUSYBOX_BIN} --list-full | ${BUSYBOX_BIN} sort)
do
  FULLPATH="/${I}"
  DIR=$(${BUSYBOX_BIN} dirname ${FULLPATH})
  
  if [ ! -d ${DIR} ]
  then
    echo "Directory ${DIR} does not exist, creating" 
    ${BUSYBOX_BIN} mkdir -p ${DIR}
  fi

  ${BUSYBOX_BIN} ln -s ${BUSYBOX_BIN} ${FULLPATH} 
done
