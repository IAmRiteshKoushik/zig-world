const std = @import("std");
// Importing and using the standard library using any name
// Very similar to Javascript. It is a top-level declaration

// Public function "main"
// Libraries do not need a main function because function
// would just be imported from there to other files, unlike
// the executable programs.

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});
}

// "Error" U "Type" - The compiler is told that either an error will
// be returned or a value will be returned of type "type"

// With specific to void, we tell the compiler that either an err
// will be generated under erraneous circumstances, or nothing
// would be genereated in normal circumstances.

// --- NOTE : Zig does use !a to infer the boolean operator
// --- NOTE : !<primitive-type> is when the Error Union Type is enforced
