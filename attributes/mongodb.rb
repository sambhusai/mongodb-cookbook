default[:mongodb][:datadir]   = "/data/mongodb"
default[:mongodb][:config]    = "/etc/mongodb.conf"
default[:mongodb][:logfile]   = "/var/log/mongodb.log"
default[:mongodb][:pidfile]   = "/var/run/mongodb.pid"
default[:mongodb][:port]      = 27017

default[:mongodb][:log_cpu_io]  = false
default[:mongodb][:auth]        = false
default[:mongodb][:verbose]     = false
default[:mongodb][:objcheck]    = false
default[:mongodb][:quota]       = false
default[:mongodb][:diaglog]     = false
default[:mongodb][:nocursors]   = false
default[:mongodb][:nohints]     = false
default[:mongodb][:nohttp]      = false
default[:mongodb][:noscripting] = false
default[:mongodb][:notablescan] = false
default[:mongodb][:noprealloc]  = false
default[:mongodb][:nssize]      = false

default[:mongodb][:mms] = false
if mongodb[:mms]
  default[:mongodb][:mms][:token]   = ""
  default[:mongodb][:mms][:name]    = ""
  default[:mongodb][:mms][:interval]= ""
end

default[:mongodb][:replication] = false
if mongodb[:replication]
  default[:mongodb][:replication][:slave]           = false
  default[:mongodb][:replication][:slave][:source]  = ""
  default[:mongodb][:replication][:slave][:only]    = ""

  default[:mongodb][:replication][:master]          = false
  default[:mongodb][:replication][:master][:source] = ""

  default[:mongodb][:replication][:pairwith]        = ""
  default[:mongodb][:replication][:arbiter]         = ""
  default[:mongodb][:replication][:autoresync]      = false
  default[:mongodb][:replication][:oplogsize]       = 0
  default[:mongodb][:replication][:opidmem]         = 0
end