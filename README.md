## Running Tests

### By Tag
```bash
rake test:<functional|integration>:<tag>:<mobile|bigweb|all> tags=@tag [options]
```
- example
```bash
rake test:tag tags=@dashboard
rake test:tag tags=@account,@dashboard

rake test:tag:mobile tags=@dashboard

rake test:functional:tag:all tags=@one
rake test:integration:tag:mobile tags=@one

```
### By Priority
```bash
rake test:<functional|integration>:<smoke|core|regression>:<mobile|bigweb|all> [options]
```
- example
```bash
rake test:functional:smoke:all 
rake test:integration:regression:bigweb
rake test:integration:core:mobile 

```

### By test type
```bash
rake test:<functional|integration>:<mobile|bigweb|all> [options]
```

### Options
```bash
rake command [env=<env-name> | device=<device-name> | pages=<path/to/pages> | data_suite=<name> | url=<url> | report_file=<path> | client=<device&browser> | users=<profiles-name> | ]
```
- example
```bash
rake test:functional:smoke:bigweb env=ci  users=stubbed
rake test:functional:tag:bigweb env=dev tags=@one users=stubbed url=google.com report_file=abc.html client=firefox data_suite=default page_dir=default 
   
```
