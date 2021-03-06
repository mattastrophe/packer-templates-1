#packer-templates
- - -

This repo has several templates for the Packer machine image build tool. Templates for older operating systems (and older point releases for still-current OSes) are in `old_templates`.

Templates that aren't quite functional are in `broken_templates`. These templates usually have problems with the key press sequence entered when the VM boots (meaning it's hard to get an automated OS install going), but otherwise are still functional (provisioning shell scripts still work, etc.).

####Builders

For most templates, both [VirtualBox](https://www.virtualbox.org/) and [VMWare](http://www.vmware.com/) builders are included.

####Post-processors 

By default, the JSON templates have a Vagrant post-processor that will create a Vagrant-format base box with the VirtualBox/VMWare output. The finished box gets placed in the template folder.

###Building VMs

To build a **VirtualBox** VM, `cd` into a template's folder and run:

<pre>
packer build --only=virtualbox template.json
</pre>

####Building all VMs with the included scripts

There are 2 shell scripts, `virtualbox_vm_build_all.sh` and `old_virtualbox_vm_build_all.sh`. They just contain sequences of `cd` and `packer build` commands. `virtualbox_vm_build_all.sh` builds all VMs from all of the templates that are not in the old or broken template folders. `old_virtualbox_vm_build_all.sh` builds all of the VMs in `old_templates`.

###.gitignore

This repo has a `.gitignore` so that ISOs, temporary and cached files created by Packer and finished output files are not tracked by git:

<pre>
#Ignore cache folders
packer_cache/

#Ignore VirtualBox output folders and their contents
output-virtualbox*

#Ignore Vagrant base boxes that are made
*.box
*.box.*
</pre>