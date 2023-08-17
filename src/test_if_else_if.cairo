use debug::PrintTrait;
use dict::Felt252DictTrait;
use option::OptionTrait;

// Define an enum
#[derive(Drop)]
enum TestEnum {
    OP1: felt252,
    OP2: felt252,
    OP3: felt252,
    OP4: felt252,
    OP5: felt252,
    OP6: felt252,
    OP7: felt252,
    OP8: felt252,
    OP9: felt252,
    OP10: felt252,
    OP11: felt252,
    OP12: felt252,
    OP13: felt252,
    OP14: felt252,
    OP15: felt252,
    OP16: felt252,
    OP17: felt252,
    OP18: felt252,
    OP19: felt252,
    OP20: felt252
}

#[test]
#[available_gas(1000000)]
fn test_if_else() {
    let x = testing::get_available_gas();

    gas::withdraw_gas().unwrap();
    let a = 1;

    if a == 1 {
        a.print();
    } else if a == 2 {
        a.print();
    } else if a == 3 {
        a.print();
    } else if a == 4 {
        a.print();
    } else if a == 5 {
        a.print();
    } else if a == 6 {
        a.print();
    } else if a == 7 {
        a.print();
    } else if a == 8 {
        a.print();
    } else if a == 9 {
        a.print();
    } else if a == 10 {
        a.print();
    } else if a == 11 {
        a.print();
    } else if a == 12 {
        a.print();
    } else if a == 13 {
        a.print();
    } else if a == 14 {
        a.print();
    } else if a == 15 {
        a.print();
    } else if a == 16 {
        a.print();
    } else if a == 17 {
        a.print();
    } else if a == 18 {
        a.print();
    } else if a == 19 {
        a.print();
    } else if a == 20 {
        a.print();
    }

    // 11270 gas    
    (x - testing::get_available_gas()).print();
    '---------Gas If Else---------'.print();
}


#[test]
#[available_gas(1000000)]
fn test_if() {
    let x = testing::get_available_gas();
    gas::withdraw_gas().unwrap();
    let a = 1;

    if a == 1 {
        a.print();
    }
    if a == 2 {
        a.print();
    }
    if a == 3 {
        a.print();
    }
    if a == 4 {
        a.print();
    }
    if a == 5 {
        a.print();
    }
    if a == 6 {
        a.print();
    }
    if a == 7 {
        a.print();
    }
    if a == 8 {
        a.print();
    }
    if a == 9 {
        a.print();
    }
    if a == 10 {
        a.print();
    }

    if a == 11 {
        a.print();
    }
    if a == 12 {
        a.print();
    }
    if a == 13 {
        a.print();
    }
    if a == 14 {
        a.print();
    }
    if a == 15 {
        a.print();
    }
    if a == 16 {
        a.print();
    }
    if a == 17 {
        a.print();
    }
    if a == 18 {
        a.print();
    }
    if a == 19 {
        a.print();
    }
    if a == 20 {
        a.print();
    }

    // 32360 gas
    (x - testing::get_available_gas()).print();
    '---------Gas Ifs---------'.print();
}


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
