Run Tests

rake test:<suite> [env=<env>] [feature-file] [scenario-name] [browser= <ie|firefox|chrome>] [device=<iphone-5, iphone-6, iphone-7,galaxy-8>]

devices in known-devices.yml

config/environments/<env>.yml must exist,

if env is not mentioned, env is set to "default"

default env : dev.

run single tag : 
rake test:tag taglist=@one [stub=true]

run all : 
rake test:all

run functional : 
rake test:functional

run integration : 
rake test:integration