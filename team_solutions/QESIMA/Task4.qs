%%qsharp
open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;
operation Task4(input : Qubit[], target : Qubit) : Unit is Adj {
    let N = Length(input);
    let controlBits = input[0..N-2];
    Controlled X(controlBits, target);
}