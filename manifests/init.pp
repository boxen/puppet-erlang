# Public: Install Erlang from homebrew.
#
# Examples
#
#   include erlang
class erlang {
  require autoconf
  require libtool

  package {
    'erlang':
      require => [
        Package['automake'],
        Package['libtool']
      ];
    'automake':
      require => Package['autoconf'];
  }
}
