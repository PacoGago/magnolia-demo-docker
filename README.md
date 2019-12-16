### Test

Build:

```shell
docker build -t "magnolia:dockerfile" .
```

Exposed:

```shell
docker run -d --name="magnolia" -p 8080:8080 <IMAGE_ID>
```
