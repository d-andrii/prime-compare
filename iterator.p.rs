use std::{env, time::Instant};

fn is_prime(n: i64) -> bool {
    for i in (3..n / 2).step_by(2) {
        if n % i == 0 {
            return false;
        }
    }

    return true;
}

fn main() {
    let max: i64 = env::args().last().map(|v| v.parse().unwrap()).unwrap();

    let start = Instant::now();
    let mut prime = 0;

    for i in (1..max).step_by(2) {
        if is_prime(i) {
            prime += 1;
        }
    }

    println!("{}", start.elapsed().as_secs_f64() * 1000.);
    drop(prime);
}
