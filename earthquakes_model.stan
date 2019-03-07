data {
  int<lower=0> n;
  real x[n];
}

parameters {
  real<lower=0> k;
  real<lower=0> lambda;
}

model {
  k ~ exponential(0.01);
  lambda ~ exponential(0.01);
  x ~ weibull(k, lambda);
}
