#[rustler::nif]
fn add(a: i64, b: i64) -> i64 {
    a + b
}

#[rustler::nif]
fn rust_sort(vec: Vec<i64>) -> Vec<i64> {
    let mut sorted_vec = vec.clone();
    sorted_vec.sort();
    sorted_vec
}

rustler::init!("Elixir.RustlerRodeo", [add, rust_sort]);
