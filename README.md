This repository is a sample Rails application to reproduce the error in Grape v1.7.0 & Puma v6.1.1.


## Steps to reproduce

```bash
bin/setup
bin/rails s

# Run this command from a different console
curl -v http://localhost:3000/api/demo # This command should receive 500
```

After executing the above curl command, you should see the following exception in the output of `rails s`.

> Started GET "/api/demo" for 127.0.0.1 at 2023-03-14 15:35:44 +0900
> 2023-03-14 15:35:44 +0900 Read: #<NoMethodError: undefined method `bytesize' for 304:Integer>
