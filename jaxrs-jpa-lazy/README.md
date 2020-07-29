# Hiding lazy-loaded JPA fields in JAX-RS with Jackson

Example code for [this blog post](https://purpledragon.software/blog/2020/07/29/jaxrs-and-hibernate-lazy) demonstrating
Jackson JSON filters with JPA lazy loading. 

## Building & Deploying

Ensure that you have Wildfly running then deploy using:

```sh
mvn clean wildfly:deploy
```

You can then test using a REST client:

```
GET http://localhost:8080/jaxrs-jpa-lazy/api/articles/1
```

```json
{
  "article": {
    "id": 1,
    "title": "Coding with JAX-RS and JPA for fun and profit"
  }
}
```

And for non-lazy:

```
GET http://localhost:8080/jaxrs-jpa-lazy/api/articles/1?include_tags=true
```

```json
{
  "article": {
    "id": 1,
    "title": "Coding with JAX-RS and JPA for fun and profit",
    "tags": [
      {
        "id": 1,
        "tag": "jax-rs"
      },
      {
        "id": 2,
        "tag": "jpa"
      }
    ]
  }
}
```
