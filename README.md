Boinc-docker
===========

A dockerfile that can be used to run arbitrary boinc projects...
Only tested so far with seti@home

Usage:

    docker run -t --env BOINC_CONFIG_CONTENTS="<account>
    <master_url>http://setiathome.berkeley.edu/</master_url>
    <authenticator>your_authenticator_code_here_get_it_from_setiathome</authenticator>
    </account>" --env BOINC_CONFIG_FILENAME=account_setiathome.berkeley.edu.xml -i boinc
