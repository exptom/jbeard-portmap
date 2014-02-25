class portmap::debian::services (
    $ensure = running,
    $enable = true,
) {

    # FIXME I assume I'll need to do something with idmapd

    case $::lsbdistrelease {
      13.10 : {
        $services = 'rpcbind'
      }
      default : {
        $services = 'portmap'
      }
    }

    service { $services:
        ensure => $ensure,
        enable => $enable,
    }
}
