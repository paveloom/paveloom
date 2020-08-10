content = read("README.md", String)

if contains(content, "https://raw.githubusercontent.com/Paveloom/Paveloom/master/")
    content = replace(content, "https://raw.githubusercontent.com/Paveloom/Paveloom/master/" => "./")
else
    content = replace(content, "./" => "https://raw.githubusercontent.com/Paveloom/Paveloom/master/")
end

open("README.md", "w") do io
    print(io, content)
end
