#!/bin/bash
StatusDoServico=$(service httpd status)
        if [[ $StatusDoServico == *"active (running)"* ]];
        then echo "O servico HTTPD esta ativo $(date +%d/%m/%y) as $(date +%H:%M:%S)-APACHE esta ONLINE" | tee -a /scripts/log_online.txt;
        else echo "O servico HTTPD esta desativo$(date +%d/%m/%y) as $(date +%H:%M:%S)-APACHE esta OFFLINE" | tee -a /scripts/log_offline.txt;
        fi
