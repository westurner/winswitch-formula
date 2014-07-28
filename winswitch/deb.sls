include:
  - winswitch

winswitch_main:
  pkgrepo.managed:
    - humanname: winswitch-stable-{{ grains['oscodename'] }}
    - name: deb http://winswitch.org/ {{ grains['oscodename'] }} main
    - file: /etc/apt/sources.list.d/winswitch-stable.list
    - dist: {{ grains['oscodename'] }}
    - key_url: salt://winswitch/files/gpg.asc
    - require_in:
      - pkg: winswitch
