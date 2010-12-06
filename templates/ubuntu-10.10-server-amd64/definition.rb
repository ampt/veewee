Veewee::Session.declare( {
  :cpu_count => '1', :memory_size=> '256', 
  :disk_size => '10140', :disk_format => 'VDI',
  :os_type_id => 'Ubuntu_64',
  :iso_file => "ubuntu-10.10-server-amd64.iso", 
  :iso_src => "http://releases.ubuntu.com/maverick/ubuntu-10.10-server-amd64.iso",
  :iso_md5 => "ab66a1d59a8d78e9ea8ef9b021d6574a",
  :iso_download_timeout => "1000",
  :boot_wait => "10",:boot_cmd_sequence => [ 
                 '<Esc><Esc><Enter>',
    		         '/install/vmlinuz noapic preseed/url=http://%IP%:%PORT%/preseed.cfg ',
    		         'debian-installer=en_US auto locale=en_US kbd-chooser/method=us ',
   				       'hostname=%NAME% ',
    		         'fb=false debconf/frontend=noninteractive ',
   		           'console-setup/ask_detect=false console-setup/modelcode=pc105 console-setup/layoutcode=us ',
    		         'initrd=/install/initrd.gz -- <Enter>' 
    ],
  :kickstart_port => "7122", :kickstart_timeout => "10000",:kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",:ssh_user => "vagrant", :ssh_password => "vagrant",:ssh_key => "",
  :ssh_host_port => "2222", :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -H now",
  :postinstall_files => [ "postinstall.sh"],:postinstall_timeout => "10000"
   }
)
