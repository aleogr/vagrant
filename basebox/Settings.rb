ENV['VAGRANT_INSTALL_LOCAL_PLUGINS'] = 'true'

MACHINES = [
  'default',
  'itaipu'
]

PROVIDERS = [
  'virtualbox',
  'libvirt'
]

PROVISIONERS = [
  'startup',
  'security',
  'desktop',
  'apps'
]

PLUGINS = [
  'vagrant-reload',
  'vagrant-proxyconf',
  'vagrant-env'
]

def VagrantLoad(list, root)
  list.each do |item|
    vagrantfile = root + item + '/Vagrantfile'
    load File.expand_path(vagrantfile) if File.exists?(vagrantfile)
  end
end
