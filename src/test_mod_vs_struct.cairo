use debug::PrintTrait;
use dict::Felt252DictTrait;
use option::OptionTrait;

#[derive(Drop)]
struct Test_Struct {}

trait TestStructTrait {
    fn new() -> Test_Struct;
    /// Create a new instance of the EVM instructions.
    fn add(ref self: Test_Struct, a: u32, b: u32) -> u32;
}

impl TestStructImpl of TestStructTrait {
    fn new() -> Test_Struct {
        Test_Struct {}
    }


    fn add(ref self: Test_Struct, a: u32, b: u32) -> u32 {
        a + b
    }
}

mod test_mod {
    fn add(a: u32, b: u32) -> u32 {
        a + b
    }
}

#[test]
#[available_gas(100000)]
fn test_mod_functions() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();
    let a = 1;
    let b = 9;

    let c = test_mod::add(a, b);
    let d = test_mod::add(a, b);

    '---------Mod Function Add-----'.print();
    let y = testing::get_available_gas();
    // 7120    
    (x - testing::get_available_gas()).print();
}

#[test]
#[available_gas(100000)]
fn test_struct_functions() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();

    let mut test_struct = TestStructTrait::new();

    let a = 1;
    let b = 9;

    let c = test_struct.add(a, b);
    let d = test_struct.add(a, b);

    '------Struct Function Add---'.print();
    let y = testing::get_available_gas();
    // 7300 gas
    (x - testing::get_available_gas()).print();
}
