```sh
#!/bin/bash
URLS=("http://example.com/file1.txt" "http://example.com/file2.txt")
for URL in "${URLS[@]}"; do
RESPONSE=$(curl -o /dev/null -s -w "%{time_total}\n" "$URL")
echo "Time taken to download $URL: $RESPONSE seconds"
done
```

- RESPONSE -> variable to store the time taken for each download
- for loop -> iterates over each URL in the array
- curl -> command to perform the download and measure time taken
- echo -> command to print the results