# host-basic-setup-ansible
## 概要
自宅サーバのホスト構築用の Ansible Playbook です。

## 使い方
以下のような内容の inventory.ini を用意します。
target node のIPアドレスを指定します。
```
[hosts]
192.168.2.1 ansible_user=root ansible_ssh_private_key_file=~/.ssh/id_rsa
```
必要な collection をインストールします。
```
$ ansible-galaxy collection install community.general
```
ansible-playbook で実行します。
```
# dry-run
$ ansible-playbook -i inventory.ini playbook.yaml --check
$ ansible-playbook -i inventory.ini playbook.yaml
```