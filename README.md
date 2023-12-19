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
Once that's confirmed, you can SSH into your Jenkins server by:

    ssh -A user@public-ip-address

Then cat the file below to confirm your local keys have transferred across:

    cat ~/.ssh/authorized_keys

[1]: https://www.linode.com/docs/guides/using-ssh-agent/
[2]: https://www.jenkins.io/doc/book/installing/linux/#debianubuntu


On the Jenkins Security group, add an inbound rule: TCP, port 8080, custom IPv4 anywhere (or any IPv4 of your choice)
Go to the Jenkins server Public IP on port 8080. You will see this:

![](https://github.com/naqeebghazi/ansible-config-mgt.darey/blob/main/images/jenkins-browser.png?raw=true)

The password for this page can be found at this location in your jenkins server:

    sudo cat /var/lib/jenkins/secrets/initialAdminPassword

After pasting that password into the browser, you will get this page:

![](https://github.com/naqeebghazi/ansible-config-mgt.darey/blob/main/images/jenkinsbrowser2.png?raw=true)

Click on 'Install suggested plugins' which will then install a series of items, ask to create a new user (enter details) before mmoving to this page:

![](https://github.com/naqeebghazi/ansible-config-mgt.darey/blob/main/images/jenkinshome.png?raw=true)

## Setup of Webhook:

When Jenkins receives a GitHub push hook, GitHub Plugin checks to see whether the hook came from a GitHub repository which matches the Git repository defined in SCM/Git section of this job. If they match and this option is enabled, GitHub Plugin triggers a one-time polling on GITScm. When GITScm polls GitHub, it finds that there is a change and initiates a build. The last sentence describes the behavior of Git plugin, thus the polling and initiating the build is not a part of GitHub plugin.


