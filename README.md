# ABTesting App

- API to do AB Testing.

===
### API

`POST /api/v1/variants`
```
{
  "userID": 1,
  "experiment": "signups"
}
```


`POST /api/v1/track`
```
{
  "userID": 1,
  "experiment": "signups"
}
```

===

### Example dashboard
![Dashbord](https://github.com/duriana/ABTestingApp/dashboard.png)

### Diagram
![Diagram](https://cl.ly/image/0R430D2j0l1c)
