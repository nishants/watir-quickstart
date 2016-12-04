### Running Tests

### By Tag
```bash
rake test:<functional|integration>:<tag>:<mobile|bigweb|all> tags=@tag
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
