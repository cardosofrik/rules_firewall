#regras básicas firewall  gnu//linux

=====================================


Observando tabela filter


watch iptables -t  filter -L -v



=====================================


Add regras


cp firewall_rules.sh  /etc/init.d

chmod +x /etc/init.d/firewall_rules.sh

Inicializar:


vi /etc/rc.local

etc/init.d/firewall_rules.sh start



=====================================

reboot

=====================================

systemctl status rc-local.service

