open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

// Task 2. Celebrate MIT iQuHack!
// (input will contain 2 qubits)
operation Task2(input : Qubit[], target : Qubit) : Unit is Adj {
    ControlledOnInt(0b1010011101, X)(input[0], target); // M I T
    ControlledOnInt(0b0101100011, X)(input[1], target); // I Q U H A C K
}