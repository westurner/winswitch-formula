winswitch_main:
  pkgrepo.managed:
    - humanname: i3-stable-{{ grains['oscodename'] }}
    - name: deb http://winswitch.org/ {{ grains['oscodename'] }} main
    - dist: {{ grains['oscodename'] }}
    - key_url: salt://winswitch/files/gpg.asc


winswitch:
  pkg.latest:
    - require:
      - pkgrepo: winswitch_main
