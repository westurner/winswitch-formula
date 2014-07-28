freenx:
  pkg:
    - installed
    - pkgs:
      - nxagent
      - nxproxy

freenx_main:
  pkgrepo.managed:
    - humanname: nx-stable-{{ grains['oscodename'] }}
    - name: deb http://ppa.launchpad.net/freenx-team/testing/ubuntu {{ grains['oscodename'] }} main
    - file: /etc/apt/sources.list.d/freenx.list
    - dist: {{ grains['oscodename'] }}
    - keyid: D018A4CE
    - keyserver: keyserver.ubuntu.com
    #- key_url: salt://winswitch/files/freenx-team/gpg.asc
    - require_in:
      - pkg: freenx
