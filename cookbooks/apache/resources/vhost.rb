default_action :create
action :create do
  log "Mi nombre es #{new_resource.name}"
end