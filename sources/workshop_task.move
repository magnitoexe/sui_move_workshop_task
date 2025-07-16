module 0x0::magnito;
use std::string::String;

public struct Student has key {
    id: UID,
    name: String,
    department: String,
    level: u8
}
public fun create_student(
    name: String,
    department: String,
    level: u8,
    ctx: &mut TxContext
): Student  {
    let student = Student { 
        id: object::new(ctx), 
        name, 
        department, 
        level 
    };
    transfer::transfer(student, ctx.sender());
}
