# For part a)
# Finding p(z<=1.96)
pnorm(1.96)

# Finding p(z<=1.645)
pnorm(1.645)

# Finding p(z>=1.96)
1 - pnorm(1.96)

# For part b)
# Finding p(x<=18) where X~N(μ=20, 𝜎=3)
pnorm(18, mean = 20, sd = 3)

# Finding p(x>=25) where X~N(μ=20, 𝜎=3)
1 - pnorm(25, mean = 20, sd = 3)

# For part c)
# Finding p(exactly 4 correct answers) where X~B(n=12, p=1/5)
dbinom(4, size = 12, prob = 1/5)

# Finding p(4 or less correct answers) where X~B(n=12, p=1/5)
pbinom(4, size = 12, prob = 1/5)

# Finding p(more than 6 correct answers) where X~B(n=12, p=1/5)
1 - pbinom(6, size = 12, prob = 1/5)
