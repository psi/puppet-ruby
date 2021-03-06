# Installs ruby 1.9.3-p385 from rbenv and symlinks it as 1.9.3.
#
# Usage:
#
#     include ruby::1-9-3
class ruby::1-9-3 {
  require ruby
  require ruby::1-9-3-p385

  file { "${ruby::root}/versions/1.9.3":
    ensure  => symlink,
    force   => true,
    target  => "${ruby::root}/versions/1.9.3-p385"
  }
}
