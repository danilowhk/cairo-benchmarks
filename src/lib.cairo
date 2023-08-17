// Test conclusion: Multiple Else Ifs(11270 gas) costs less steps than Multiple Ifs(32360)
// Obs: for this test we considered 20 conditions;
mod test_if_else_if;

// Test conclusion: There is no difference between calling a mod function vs calling a function from a struct.
// Not so sure if there are step differences in deployment of a struct format / mod format functions
mod test_mod_vs_struct;

// Test conclusion: Maintaing and changing values on a Strut(57470 gas) is cheaper than inserting the new value on a Dict(131040 gas).
// Obs: for this test we considered 
mod test_struct_vs_dict;


mod test_recursion_vs_loop;

