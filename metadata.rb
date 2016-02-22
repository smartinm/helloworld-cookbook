name 'helloworld'
maintainer 'Sergio Martín'
maintainer_email 'smartin@flexiant.com'
license 'all_rights'
description 'Installs/Configures helloworld'
long_description 'Installs/Configures helloworld'
version '0.1.0'

depends 'apache2'

attribute "helloworld/content",
  :display_name => "Message"
