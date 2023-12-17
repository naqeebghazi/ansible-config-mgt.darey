# Ansible Configuration & Management

The architecture we're planning:

![Archi](https://github.com/naqeebghazi/ansible-config-mgt.darey/blob/main/images/Architecture.png?raw=true)

This [Ansible documentation](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-distros) will help you install ansible on youir relevent system. 

Confirm it's installed:

    ansible --version

![ansibleversion](https://github.com/naqeebghazi/ansible-config-mgt.darey/blob/main/images/ansible-version.png?raw=true)

If Ansible config file not present, auto-generate a basic one by:

    ansible-config init --disabled > ansible.cfg

Auto-generate a more complete one:

    ansible-config init --disabled -t all > ansible.cfg

On your Ubuntu EC2 instance, install Jenkins:

    sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian/jenkins.io-2023.key
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
    sudo apt-get update
    sudo apt-get install jenkins

Follow [link][2] for updated installatioin instructions

Confirm Jenkins is running:

    sudo systemctl status jenkins

![](https://github.com/naqeebghazi/ansible-config-mgt.darey/blob/feature/1/images/systemctl.status.Jenkins.png?raw=true)

Ensure ssh-agent is functional. Follow this [link][1] for more detailed instrcutions.

[1]: https://www.linode.com/docs/guides/using-ssh-agent/
[2]: https://www.jenkins.io/doc/book/installing/linux/#debianubuntu