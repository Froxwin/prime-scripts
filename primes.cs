List<int> primes (int max) {
	List<int> array = new List<int>();
	for (int i = 2; i <= max; i++) {
		bool isPrime = true;
		for (int n = (i - 1); n >= 2; n--) {
			if (i % n == 0) {
				isPrime = false;
				break;
			}
		}
		if (isPrime) array.Add(i);
	}
	return array;
}

Console.WriteLine(string.Join(',', primes(Int32.Parse(args[0]))));
