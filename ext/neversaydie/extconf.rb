ENV['RC_ARCHS'] = '' if RUBY_PLATFORM =~ /darwin/

# :stopdoc:

require 'mkmf'

LIBDIR      = Config::CONFIG['libdir']
INCLUDEDIR  = Config::CONFIG['includedir']

$CFLAGS << " -O3 -Wall -Wcast-qual -Wwrite-strings -Wconversion -Wmissing-noreturn -Winline"

HEADER_DIRS = [
  # First search /opt/local for macports
  '/opt/local/include',

  # Then search /usr/local for people that installed from source
  '/usr/local/include',

  # Check the ruby install locations
  INCLUDEDIR,

  # Finally fall back to /usr
  '/usr/include',
]

LIB_DIRS = [
  # First search /opt/local for macports
  '/opt/local/lib',

  # Then search /usr/local for people that installed from source
  '/usr/local/lib',

  # Check the ruby install locations
  LIBDIR,

  # Finally fall back to /usr
  '/usr/lib',
]

sig_dirs = dir_config('sigsegv', '/opt/local/include', '/opt/local/lib')
unless ["", ""] == sig_dirs
  HEADER_DIRS.unshift sig_dirs.first
  LIB_DIRS.unshift sig_dirs[1]
end

unless find_header('sigsegv.h', *HEADER_DIRS)
  abort "sigsegv is missing.  please install it."
end

unless find_library('sigsegv', 'sigsegv_install_handler', *LIB_DIRS)
  abort "sigsegv is missing.  please install it."
end

create_makefile('neversaydie/neversaydie')

# :startdoc:
