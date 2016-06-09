% Flip
n = 0;
cnt = 0;
while n < 3
    x = rand()*2;
    if fix(x)==0
        n = n+1;
    else
        n = 0;
    end
    cnt = cnt+1;
end 
fprintf('Count: %d\n', cnt);
