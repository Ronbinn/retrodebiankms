# retrodebiankms
This is an asible role to configure a debian system for 15khz kms gaming.

As root install git and ansible.
```
apt install ansible git
```
Clone my repo
```
git clone https://github.com/ronbinn/retrodebiankms
```
Change dir and run the ansible playbook. This will download and install a patched kernel, retroarch and switchres (packages compiled by me, see the releases page).
```
cd retrodebiankms
ansible-playbook install.yml
```
Poweroff, connect your pc to a 15khz tv, power on and you should see retroarch's rgui interface. Then you can load fbneo core and [World Rally](https://en.wikipedia.org/wiki/World_Rally_(1993_video_game)) rom from ``/home/arcade/ROMs/arcade`` dir. It's a freeware rom by Gaelco.

The playbook will install [ES-DE](https://gitlab.com/es-de/) and [GroovyMAME](https://github.com/antonioginer/groovymame) too. Edit the ``/etc/profile.d/99-launcher.sh`` file to use them at next boot.

If you prefer a step by step guide and do everything by yourself, [read the wiki](https://github.com/ronbinn/retrodebiankms/wiki) (still in progress)
