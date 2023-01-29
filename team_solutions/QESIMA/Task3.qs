
open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

// Task 3. 
// (input will contain 6 qubits)
operation Task3(input : Qubit[], target : Qubit) : Unit is Adj {
    for i in [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56] {
        Controlled X(input[i % 6], target);
    }
}