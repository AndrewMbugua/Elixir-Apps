The goal of this assignment is to test your understanding of the following concepts:
- The mix build tool
- Enumerables

This exercise should be submitted by 06th January 2022 8.00am.

Question 1.

Create a new mix project called "blogger". Add [httpoison](hexdocs.pm/httpoison) as a dependency and write a function called "fetch_blog" that uses HTTPoison to fetch a blog post from the link below.

```
https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91
```
For example:
when the function is called in iex.
```
iex> Blogger.fetch_blog()
%HTTPoison.Response{
  body: "<!doctype html>...",
  headers: [    
    {"Content-Type", "text/html"},..],  
  request: %HTTPoison.Request{
    body: "",
    headers: [],
    method: :get,
    options: [],
    params: %{},
    url: "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91
"
  },
  request_url: "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91
",
  status_code: 200
}

```

Question 2.

On the same project, write a function that takes in the given input and returns the given output.
```
Input:  ["cow", "goat", "sheep"]
Output: ["COW", "GOAT", "SHEEP"]
```
