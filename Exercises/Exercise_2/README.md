- Create a new mix project called `counter`
- In the `counter.ex` file generated in your project, create a function that counts the number of characters in the words given.
## Example
```elixir
iex> Counter.count(["cow", "goat", "sheep"])
[3, 4, 5]
```
Exercise notes
String.length/1 elixir

length/1 returns the number of graphemes in the string,a grapheme being a combination of letters.

length/1 & grapheme/1 shows us a list of codepoints.

Special characters may contain more than 1-byte


Screenshot of output
![](https://github.com/AndrewMbugua/Elixir-Apps/blob/master/Exercises/Screenshots/exercise_2.png)


### Exercise_1 correction
Input: ["cow", "goat", "sheep"]

Output: ["COW", "GOAT", "SHEEP"]

```
def capitalize(input) do
Enum.map(input, &String.upcase/1)

end
```
