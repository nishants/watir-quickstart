## Running Tests

### By Tag
```bash
rake test:<functional|integration>:<tag>:<mobile|bigweb|all> tags=@tag [options]
```

### By Priority
```bash
rake test:<functional|integration>:<smoke|core|regression>:<mobile|bigweb|all>
```
- example
```bash
rake test:functional:smoke:all 
rake test:integration:regression:bigweb
rake test:integration:core:mobile 

```

### By test type
```bash
rake test:<functional|integration>:<mobile|bigweb|all>
```

### Options
```bash
rake command [env=<env-name> | device=<device-name> | pages=<path/to/pages> | data_suite=<name> | url=<url> | report_file=<path> | client=<device&browser> | users=<profiles-name> | ]
```
