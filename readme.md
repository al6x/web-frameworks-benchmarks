# Web Frameworks Benchmark

How it works - application query some text from remote HTTP service (service delays each
request for some time) and render HTML page using that text.

It simulates how Web Framework performs when it needs to wait for response from DB or
other services, how fast its templating engine is and how fast it is itself.

In every folder there's an example for different Web Framework, checkout instructions in `readme.md` in corresponding folder.

Performance measured using `wrk` tool with following command

    wrk -t2 -c100 -d10s http://localhost:3000

# Results

## Ruby on Rails (Ruby v. 2.1.0, Rails v. 4.0.2, with Puma)

```
Running 10s test @ http://localhost:3000
  4 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   342.11ms   41.09ms 398.70ms   69.36%
    Req/Sec    72.43      6.95    90.00     76.60%
  2914 requests in 10.01s, 7.70MB read
Requests/sec:    291.19
Transfer/sec:    787.98KB
```

## Express.js

```
Running 10s test @ http://localhost:3000
  4 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   263.82ms   18.08ms 299.28ms   85.35%
    Req/Sec    95.83      9.80   127.00     83.10%
  3782 requests in 10.01s, 9.28MB read
Requests/sec:    377.99
Transfer/sec:      0.93MB
```

## Mono.js

```
Running 10s test @ http://localhost:3000
  4 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   295.46ms   27.34ms 372.29ms   86.04%
    Req/Sec    85.34     13.82   120.00     47.17%
  3361 requests in 10.01s, 8.20MB read
Requests/sec:    335.80
Transfer/sec:    838.84KB
```

# Contributors

- [Alexey Petrushin](http://petrush.in)
- [Anton Ageev](https://github.com/antage)