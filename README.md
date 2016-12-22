## Setup
- install webdriver on path
- bundle install

## Sample Rake Commands
 
### Functional tests, Firefox, Dev machine, for specific feature
rake test:bigweb:functional client=firefox tags=@accounts

### Readonly Integration tests, staging env
```bash
rake test:mobile:integration env=staging readonly=true
```

### Functional Smoke, for mobile web , on CI machine,
```bash
rake test::mobile:functional env=ci tags=@smoke
```

### Regression Integration, for big-web , on CI machine,
```bash
rake test:bigweb:integration env=ci tags=@regression
```

### Integration tests, chrome iphone-5 emulator , CI machine
```bash
rake test:mobile:integration  env=ci  client=iphone5
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
