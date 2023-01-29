%%qsharp
open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

operation Task1(input : Qubit[], target : Qubit) : Unit is Adj {
    let N = Length(input);
    X(input[1]);

    Controlled X(input, target);

    X(input[0]);
    X(input[1]);
    X(input[2]);
    Controlled X(input, target);

    X(input[0]);
    X(input[2]);

}