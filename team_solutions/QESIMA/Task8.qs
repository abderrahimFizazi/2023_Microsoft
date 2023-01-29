%%qsharp
open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;
operation Task8(input : Qubit[], target : Qubit) : Unit is Adj {
    let ctrls = [15, 23, 29, 45, 77, 113, 121];
    for i in ctrls {
        ControlledOnInt(i, X)(input, target);
    }
}