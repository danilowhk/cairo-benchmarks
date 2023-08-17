use debug::PrintTrait;
use dict::Felt252DictTrait;
use option::OptionTrait;

// Define an enum
// #[derive(Drop)]
// enum TestEnum {
//     OP1: u32,
//     OP2: u32,
//     OP3: u32,
//     OP4: u32,
//     OP5: u32,
//     OP6: u32,
//     OP7: u32,
//     OP8: u32,
//     OP9: u32,
//     OP10: u32,
//     OP11: u32,
//     OP12: u32,
//     OP13: u32,
//     OP14: u32,
//     OP15: u32,
//     OP16: u32,
//     OP17: u32,
//     OP18: u32,
//     OP19: u32,
//     OP20: u32
// }

// #[test]
// #[available_gas(1000000)]
fn test_if_else() {
    // let x = testing::get_available_gas();

    // gas::withdraw_gas().unwrap();
    let a = 1;

    if a == 1 {
        a.print();
    } else if a == 2 {
        a.print();
    } 

    // // 11270 gas    
    // (x - testing::get_available_gas()).print();
    // '---------Gas If Else---------'.print();
}


// #[test]
// #[available_gas(1000000)]
// fn test_if() {
//     let x = testing::get_available_gas();
//     gas::withdraw_gas().unwrap();
//     let a = 1;

//     if a == 1 {
//         a.print();
//     }
//     if a == 2 {
//         a.print();
//     }
//     if a == 3 {
//         a.print();
//     }
//     if a == 4 {
//         a.print();
//     }
//     if a == 5 {
//         a.print();
//     }
//     if a == 6 {
//         a.print();
//     }
//     if a == 7 {
//         a.print();
//     }
//     if a == 8 {
//         a.print();
//     }
//     if a == 9 {
//         a.print();
//     }
//     if a == 10 {
//         a.print();
//     }

//     if a == 11 {
//         a.print();
//     }
//     if a == 12 {
//         a.print();
//     }
//     if a == 13 {
//         a.print();
//     }
//     if a == 14 {
//         a.print();
//     }
//     if a == 15 {
//         a.print();
//     }
//     if a == 16 {
//         a.print();
//     }
//     if a == 17 {
//         a.print();
//     }
//     if a == 18 {
//         a.print();
//     }
//     if a == 19 {
//         a.print();
//     }
//     if a == 20 {
//         a.print();
//     }

//     // 32360 gas
//     (x - testing::get_available_gas()).print();
//     '---------Gas Ifs---------'.print();
// }


// #[test]
// #[available_gas(1000000)]
// fn test_match() {
//     let x = testing::get_available_gas();
//     gas::withdraw_gas().unwrap();

//     // OBS: Important to notice that the way we create the Enum value might highly impact the steps needed to use matches 
//     let value = TestEnum::OP20(20);

//     match value {
//         TestEnum::OP1(x) => x.print(),
//         TestEnum::OP2(x) => x.print(),
//         TestEnum::OP3(x) => x.print(),
//         TestEnum::OP4(x) => x.print(),
//         TestEnum::OP5(x) => x.print(),
//         TestEnum::OP6(x) => x.print(),
//         TestEnum::OP7(x) => x.print(),
//         TestEnum::OP8(x) => x.print(),
//         TestEnum::OP9(x) => x.print(),
//         TestEnum::OP10(x) => x.print(),
//         TestEnum::OP11(x) => x.print(),
//         TestEnum::OP12(x) => x.print(),
//         TestEnum::OP13(x) => x.print(),
//         TestEnum::OP14(x) => x.print(),
//         TestEnum::OP15(x) => x.print(),
//         TestEnum::OP16(x) => x.print(),
//         TestEnum::OP17(x) => x.print(),
//         TestEnum::OP18(x) => x.print(),
//         TestEnum::OP19(x) => x.print(),
//         TestEnum::OP20(x) => x.print(),
//     }

//     // 5750 gas
//     (x - testing::get_available_gas()).print();
//     '---------Match Gas---------'.print();
// }
