class portmap::debian::services (
    $ensure = running,
    $enable = true,
) {

    # FIXME I assume I'll need to do something with idmapd
    $services = 'portmap'

    service { $services:
        ensure => $ensure,
        enable => $enable,
    }

}
