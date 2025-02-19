documentation_complete: true

metadata:
    version: TBD

reference: https://public.cyber.mil/stigs/downloads/?_dl_facet_stigs=operating-systems%2Cunix-linux

title: '[DRAFT] DISA STIG with GUI for Oracle Linux 9'

description: |-
    This is a draft profile based on its OL8 version for experimental purposes.
    It is not based on the DISA STIG for OL9, because this one was not available at time of
    the release.

    Warning: The installation and use of a Graphical User Interface (GUI)
    increases your attack vector and decreases your overall security posture. If
    your Information Systems Security Officer (ISSO) lacks a documented operational
    requirement for a graphical user interface, please consider using the
    standard DISA STIG for Oracle Linux 9 profile.

extends: stig

selections:
    # Unselect rules that remove packages required by "server with GUI" installation
    # OL08-00-040320
    - '!xwindows_remove_packages'

    # SRG-OS-000480-GPOS-00227
    - '!package_xorg-x11-server-common_removed'

    # SRG-OS-000095-GPOS-00049
    - '!package_nfs-utils_removed'

    # Unselect to allow the system to start in graphical.target mode
    # OL08-00-040321
    - '!xwindows_runlevel_target'
