erp
------------

Установка сервера БД, 1С и сервера лицензий
Роль подходит как для сервера ERP, так и для обычного сервера 1С


Требования
------------

CentOS 7, postinstall script

Т.к. подключение через ssh осуществляется с использованием ключей,
нужно прописать параметры соединения в ~/.ssh/config

Параметры в ansible.cfg (remote_user можно указать непосредственно в playbook, из которого вызывается роль)

[defaults]
remote_user = удаленный пользователь
roles_path = ./roles

Папка files:

1c - пакеты rpm 1С-сервера
fonts - пакет rpm msttcorefonts
hasp - пакет rpm aksusbd
postgresql - пакеты rpm postgreSQL

Переменные
--------------

ip-aдрес сервера для файла hosts:

'erp_external_ip: 192.168.1.1'

fqdn для файла hosts:

'erp_fqdn: erp.local'

имя хоста:

'erp_hostname: erp'

пароль пользователя postgres:

'postgres_password: test'

Пример playbook
----------------

```
- name: Configure erp
  hosts: erp
  become: true

  vars:
    erp_external_ip: 192.168.1.1
    erp_fqdn: lc-erp-test.local
    erp_hostname: lc-erp-test
    postgres_password: 12345
  roles:
    - erp
```

