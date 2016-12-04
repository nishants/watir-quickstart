### Running Tests

```bash
rake test:<suite> [env=<env>] [feature-file] [scenario-name] [browser= <ie|firefox|chrome>] [device=<iphone-5, iphone-6, iphone-7,galaxy-8>]
```
### Running All Tests

```bash
rake test:all
```

### Running By tags

```bash
rake test:tag taglist=@one 
```

### Running Functinoal tests

```bash
rake test:functional
```

### Creating new env
- config/environments/env-name.yml must exist,
- run tests as 

```bash
rake test:all env=env-name
```


### Running Integration tests

```bash
rake test:integration
```






if env is not mentioned, env is set to "default"


## Running Tests

### Run By Priority
```bash
rake test:<functional|integration>:<smoke|core|regression>:<mobile|bigweb|all>
```
- example
```bash
rake test:functional:smoke:all 
rake test:integration:regression:bigweb
rake test:integration:core:mobile 

```
### Run By Tag
```bash
rake test:<functional|integration>:<tag>:<mobile|bigweb|all> tags=@tag
```

### Run By test type
```bash
rake test:<functional|integration>:<mobile|bigweb|all>
```