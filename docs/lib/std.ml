let length x =
begin
    let i = 0;
    for _ = x do
        i += 1;
    i
end;

let List = {};

let List.map f x =
begin
    let result = [];
    for i = x do
        result += [f i];
    result
end;

let List.filter f x =
begin
    let result = [];
    for i = x do
        if f i then
            result += [i];
    result
end;

let List.reduce f x =
begin
    let result = x :: 0;
    let index as num = 1;
    while let elm = x[index] do
    begin
        let result = f result elm;
        index += 1
    end;
    result
end;

let List.zip lists =
begin
    let [index, result] = [0, []];
    while let elms =
        List.map \x.x[index] lists do
    begin
        result += [elms];
        index += 1
    end;
    result
end;

let List.join x s =
begin
    let result = "";
    let xlen = length x;
    for i = x do
    begin
        result += (i as str);
        if x[[i]] != (xlen - 1 ~ xlen)
            then result += s
    end;
    result
end;

let List.reverse x =
begin
    let result = [];
    for i = x do
        result := ([i] + result);
    result
end
