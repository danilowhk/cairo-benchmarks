use debug::PrintTrait;
use dict::Felt252DictTrait;
use option::OptionTrait;

fn recursive_add(mut a: u32, mut counter: u32) -> u32 {
    if counter > 50 {
        return a;
    }
    a += 1;
    counter += 1;
    return recursive_add(a, counter);
}


fn loop_add(mut a: u32, mut counter: u32) -> u32 {
    loop {
        if counter > 50 {
            break;
        }
        counter += 1;
        a += 1;
    };
    a
}


#[test]
#[available_gas(1000000)]
fn test_recursion() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();
    let value = recursive_add(0, 0);

    // 187410 gas for 20 addition
    (x - testing::get_available_gas()).print();
    'Recursion'.print();
}

#[test]
#[available_gas(1000000)]
fn test_loop_in_function() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();
    let mut a : u32 = 0;
    let mut counter: u32 = 0;
    loop {
        if counter > 50 {
            break;
        }
        counter += 1;
        a += 1;
    };

    // 124270 gas for 20 additions
    (x - testing::get_available_gas()).print();
    'Loop'.print();
}

#[test]
#[available_gas(1000000)]
fn test_loop_as_function() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();
    let value = loop_add(0, 0);

    // 187410 gas for 20 additions
    (x - testing::get_available_gas()).print();
    'Loop as function'.print();
}


