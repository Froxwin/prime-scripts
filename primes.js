const factors = n =>
  Array.from(Array(n), (_, i) => i + 1).filter(i => n % i === 0);

const primes = n =>
  Array.from(Array(n - 1), (_, i) => i + 2).filter(
    i => factors(i).length === 2
  );

console.dir(primes(process.argv[2]), { maxArrayLength: process.argv[2] });
