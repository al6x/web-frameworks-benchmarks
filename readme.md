# Web Frameworks Benchmark

How it works - application query some text from remote HTTP service (service delays each
request for some time) and render HTML page using that text.

It simulates how Web Framework performs when it needs to wait for response from DB or
other services, how fast its templating engine is and how fast it is itself.

In every folder there's an example for different Web Framework, checkout instructions in `readme.md` in corresponding folder.

Performance measured using `siege` tool with following command

    siege -b -t10s -c100 http://localhost:3000

# Results

## Ruby on Rails (with Puma)

```
Transactions:		         223 hits
Availability:		      100.00 %
Elapsed time:		        9.64 secs
Data transferred:	        0.51 MB
Response time:		        0.75 secs
Transaction rate:	       23.13 trans/sec
Throughput:		        0.05 MB/sec
Concurrency:		       17.34
Successful transactions:         223
Failed transactions:	           0
Longest transaction:	        2.97
Shortest transaction:	        0.36
```

## Express.js

```
Transactions:		        3158 hits
Availability:		      100.00 %
Elapsed time:		        9.55 secs
Data transferred:	        7.19 MB
Response time:		        0.30 secs
Transaction rate:	      330.68 trans/sec
Throughput:		        0.75 MB/sec
Concurrency:		       97.56
Successful transactions:        3158
Failed transactions:	           0
Longest transaction:	        0.34
Shortest transaction:	        0.20
```

## Mono.js

```
Transactions:		        2839 hits
Availability:		      100.00 %
Elapsed time:		        9.54 secs
Data transferred:	        6.47 MB
Response time:		        0.33 secs
Transaction rate:	      297.59 trans/sec
Throughput:		        0.68 MB/sec
Concurrency:		       96.91
Successful transactions:        2839
Failed transactions:	           0
Longest transaction:	        0.38
Shortest transaction:	        0.20
```