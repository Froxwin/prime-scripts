function primes ([int]$max) {
	$array = @()
	for ($i = 2; $i -le $max; $i++) {
		$isPrime = $true
		for ($n = ($i - 1); $n -ge 2; $n--) {
			if ($i % $n -eq 0) {
				$isPrime = $false
				break
			}
		}
		if ($isPrime) { $array += $i }
	}
	return $array
}

Write-Host $(primes($args[0]))


