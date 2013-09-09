class Prize < ActiveYaml::Base
  field :rank
  field :sponsor
  field :description
  field :link
  set_root_path "app/models"
  set_filename "prizes"
end
