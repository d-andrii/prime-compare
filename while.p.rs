use std::{env, time::Instant};

fn is_prime(n: i64) -> bool {
    let mut i = 3;
    while i < n / 2 {
        if n % i == 0 {
            return false;
        }

        i += 2;
    }

    return true;
}

fn main() {
    let max: i64 = env::args().last().map(|v| v.parse().unwrap()).unwrap();

    let start = Instant::now();
    let mut prime = 0;

    let mut i = 1;
    while i < max {
        if is_prime(i) {
            prime += 1;
        }

        i += 2;
    }

    println!("{}", start.elapsed().as_secs_f64() * 1000.);
    drop(prime);
}
