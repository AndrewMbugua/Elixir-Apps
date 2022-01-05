## Question 1.

Create a new mix project called "blogger". Add [httpoison](hexdocs.pm/httpoison) as a dependency and write a function called "fetch_blog" that uses HTTPoison to fetch a blog post from the link below.

## Screenshots
#### project creation & dependency adding
![project creation & dependency](https://github.com/AndrewMbugua/Elixir-Apps/blob/master/Exercises/Screenshots/AddingHttpoison.png)

#### Fetching the Blog

```
def fetch_blog do
HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")

end
``` 
![fetch_blog Function](https://github.com/AndrewMbugua/Elixir-Apps/blob/master/Exercises/Screenshots/fetch_blog_result.png)


## Question 2.

On the same project, write a function that takes in the given input and returns the given output.
```
Input:  ["cow", "goat", "sheep"]
Output: ["COW", "GOAT", "SHEEP"]
```

#### Using String.upcase then wraping the String.upcase function in capitalize()
![](https://github.com/AndrewMbugua/Elixir-Apps/blob/master/Exercises/Screenshots/uppercase.png)
