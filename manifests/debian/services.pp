class portmap::rhel::services (
    $ensure = running,
    $enable = true,
) {

    $services = $::lsbmajdistrelease ? {
        5 => 'portmap',
        6 => 'rpcbind',
    }

    service { $services:
        ensure => $ensure,
        enable => $enable,
    }

}
