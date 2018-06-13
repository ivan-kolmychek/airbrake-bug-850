Airbrake.configure do |c|
  c.project_id = 113743
  c.project_key = '81bbff95d52f8856c770bb39e827f3f6'
  c.root_directory = Rails.root
  c.logger = Rails.logger
  c.environment = Rails.env
  c.ignore_environments = %w(test)
  c.blacklist_keys = [/password/i, /authorization/i]
  c.code_hunks = false
end
