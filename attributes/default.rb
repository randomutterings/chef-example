default[:nginx][:init_style] = 'upstart'
default[:nginx][:source][:modules] = ['nginx::http_stub_status_module']
