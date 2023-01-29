%%qsharp
open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

operation Task1(input : Qubit[], target : Qubit) : Unit is Adj {
    let N = Length(input);
    let c = input[N-1];
    X(c);
    CNOT(input[0], target);
    X(c);
}