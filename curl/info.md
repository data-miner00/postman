# curl

-   [curl](https://curl.se/)

## HTTP Usage

-   Get request

```
curl https://jsonplaceholder.typicode.com/posts
```

-   Includes header

```
curl -i https://jsonplaceholder.typicode.com/posts
```

-   Header only

```
curl --head https://jsonplaceholder.typicode.com/posts
curl -I https://jsonplaceholder.typicode.com/posts
```

-   Put to file

```
curl -o test.txt https://jsonplaceholder.typicode.com/posts
```

-   Download file

```
curl -O https://somefile.com/my-img.jpg
curl -O rename.jpg https://somefile.com/my-img.jpg
```

-   Limit transfer rate for download

```
curl -O --limit-rate 1000B https://jsonplaceholder.typicode.com/posts
```

-   Post request

```
curl --data "title=hello&body=Hello World" https://jsonplaceholder.typicode.com/posts
```

-   Put request

```
curl -X PUT --data "title=hello&body=Hello World" https://jsonplaceholder.typicode.com/posts/3
```

-   Delete request

```
curl -X DELETE https://jsonplaceholder.typicode.com/posts/3
```

-   Basic user&pw auth

```
curl -u <username>:<password> https://login-endpoint.com/api/login
```

-   Follow request (redirection)

```
curl -L http://www.google.com
```

## FTP Usage

-   Upload file

```
curl -u user@ftp.com:<password> -T file.txt ftp://ftp.com
```
