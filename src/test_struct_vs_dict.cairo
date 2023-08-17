use debug::PrintTrait;
use dict::Felt252DictTrait;
use option::OptionTrait;

//Note: An insert on Dict takes around 5000 gas units

#[derive(Drop)]
struct TestStruct {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
    f: u32,
    g: u32,
    h: u32,
    ab: u32,
    abc: u32
}

#[test]
#[available_gas(1000000)]
fn test_updating_dict() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();
    let mut balances: Felt252Dict<u64> = Default::default();

    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);
    balances.insert(1, balances.get(1) + 1);

    '---------Gas Dict---------'.print();
    // 131040 gas for 20 changes, 125430 gas for 19 changes , 5610 gas per change
    (x - testing::get_available_gas()).print();
}

// Note: Just purely initializing and changing struct(more than 1 time) takes 900 gas;
#[test]
#[available_gas(1000000)]
fn test_updating_struct() {
    let mut test_struct = TestStruct {
        a: 0, b: 2, c: 3, d: 10, e: 20, f: 3, g: 10, h: 20, ab: 1, abc: 2
    };

    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();

    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;
    test_struct.a = test_struct.a + 1;

    '---------Gas Struct---------'.print();
    // 57470 gas for 20 changes, 54820 gas for 19 changes , 2650 gas per change
    (x - testing::get_available_gas()).print();
}

