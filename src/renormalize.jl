function renorm_inorder(a::T, b::T) where T<:Real
     @confirm abs(a) > abs(b)
     
     ab = a + b
     ε  = (a - ab) + b
     return ab, ε 
end




function renorm_inorder(a::T, b::T) where T<:Real
     @confirm abs(a) > abs(b)
     
     ab = a + b
     ε  = (a - ab) + b
     return ab, ε 
end

function renorm(a::T, b::T) where T<:Real
    ab =  a + b
    B  = ab - a
    ε  = (a - (ab - B)) + (b - B)
    return ab, ε
end

function renorm_inorder(a::T, b::T, c::T) where T<:Real
    @confirm abs(a) > abs(b) > abs(c)
     
    ab =  a + b
    B  = ab - a
    ε  = (a - (ab - B)) + (b - B)
    return ab, ε
end

if nargin==3
    [s1,c] = FastTwoSum(b,c);
    [a, b] = FastTwoSum(a,s1);
    s3=0.0;
    if b~=0
       [b,c] = FastTwoSum(b,c);
    else
       [s1,b] = FastTwoSum(s1,c);
    end
