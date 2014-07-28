
{# NOTE: this is already required by winswitch #}
tigervnc:
  - pkg:
    - installed
    - pkgs:
      - tigervnc-server
      - tigervnc-viewer

{#
tigervnc_main:
  pkgrepo.managed:
    - humanname: nx-stable-{{ grains['oscodename'] }}
    - name: deb http://ppa.launchpad.net/tigervnc-team/testing/ubuntu {{ grains['oscodename'] }} main
    - dist: {{ grains['oscodename'] }}
    - keyid: 
    - keyserver: keyserver.ubuntu.com
    #- key_url: salt://winswitch/files/tigervnc/gpg.asc
    - require_in:
      - pkg: tigervnc
#}
