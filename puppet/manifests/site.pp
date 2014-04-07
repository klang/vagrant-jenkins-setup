###########################################
# simple source versioning server
#
# - Base set up
# - Apahce, cvs, svn, git, viewvc
#
###########################################


###########################################
# Initialize environment
###########################################
class init {
  exec { 'apt-get updatec':
    command => '/usr/bin/apt-get update'
  }
}

# Exec["apt-update"] -> Package <| |>

###########################################

# Any basic utils I like having available 
###########################################
class util {

  package { "curl":
    ensure  => present,
  }

  package { "make":
    ensure  => present,
  }
}

include init
include wget
include apache
include jenkins
include maven
include git
include util

