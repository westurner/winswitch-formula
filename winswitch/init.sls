
{% from "winswitch/map.jinja" import winswitch with context %}

winswitch:
  pkg:
    - installed
    - name: {{ winswitch.pkg }}

include:
  - winswitch.nx
  - winswitch.rdp
