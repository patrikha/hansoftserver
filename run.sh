#!/bin/bash

if [ -e Database ]
then
   ./HPMServer -CreateConfig server.config
   rm -fr Databases/DEMO/Database
   rm Databases/DEMO/TransactionLog
   mv Database Databases/DEMO/
   mv TransactionLog Databases/DEMO/
fi
./HPMServer -RunAsProgram
