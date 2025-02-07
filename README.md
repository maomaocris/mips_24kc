Options:
    -n 200
        Latency test threads; more threads result in faster latency testing, but devices with weak performance (such as routers) should not set it too high; (default 200, maximum 1000)
    -t 4
        Latency test count; number of times each IP's latency is tested; (default 4 times)
    -dn 10
        Download test count; number of IPs to download speed test after latency testing and sorting, starting from the lowest latency; (default 10)
    -dt 10
        Download test time; maximum download test time for each IP, should not be too short; (default 10 seconds)
    -tp 443
        Specify test port; port used for latency testing/download testing; (default port 443)
    -url https://cf.xiu2.xyz/url
        Specify test URL; URL used for latency testing (HTTPing)/download testing, default URL not guaranteed to be available, it is recommended to use a self-built one;

    -httping
        Switch test mode; switch latency test mode to HTTP protocol, using the test address specified by [-url] parameter; (default TCPing)
        Note: HTTPing is essentially a form of network scanning behavior, so if you are running it on a server, you need to reduce concurrency (-n), otherwise some strict merchants may suspend service.
        If you encounter a situation where the number of IPs available for HTTPing latency testing is normal at first, but decreases in subsequent tests or even becomes 0, but then recovers after a while, it may also be due to temporary restrictions triggered by the ISP or Cloudflare CDN due to network scanning behavior, it is recommended to reduce concurrency (-n) to reduce the occurrence of such situations.
    -httping-code 200
        Valid status codes; valid HTTP status codes returned when latency testing with HTTPing, limited to one; (default 200 301 302)
    -cfcolo HKG,KHH,NRT,LAX,SEA,SJC,FRA,MAD
        Match specified locations; location names are three-letter airport codes, separated by commas, case-insensitive, supports Cloudflare, AWS CloudFront, only available in HTTPing mode; (default all locations)

    -tl 200
        Upper limit of average latency; only output IPs with latency lower than the specified value, upper and lower limit conditions can be used together; (default 9999 ms)
    -tll 40
        Lower limit of average latency; only output IPs with latency higher than the specified value; (default 0 ms)
    -tlr 0.2
        Upper limit of loss rate; only output IPs with loss rate lower than/equal to the specified value, range 0.00~1.00, 0 filters out any IPs with loss; (default 1.00)
    -sl 5
        Lower limit of download speed; only output IPs with download speed higher than the specified value, will stop testing when the specified number [-dn] is reached; (default 0.00 MB/s)

    -p 10
        Number of results to display; directly display the specified number of results after testing, when set to 0, results will not be displayed and the program will exit directly; (default 10)
    -f ip.txt
        IP range data file; if the path contains spaces, please enclose it in quotes; supports other CDN IP ranges; (default ip.txt)
    -ip 1.1.1.1,2.2.2.2/24,2606:4700::/32
        Specify IP range data; directly specify the IP range data to be tested through parameters, separated by commas; (default empty)
    -o result.csv
        Write result to file; if the path contains spaces, please enclose it in quotes; set to empty [-o ""] to not write to file; (default result.csv)

    -dd
        Disable download speed test; after disabling, the test results will be sorted by latency (default sorted by download speed); (default enabled)
    -allip
        Test all IPs; test each IP in the IP range (IPv4 only); (default randomly test one IP from each /24 range)

    -v
        Print program version + check for updates
    -h
        Print help information
