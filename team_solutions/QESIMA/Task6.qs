open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

operation Task6(input : Qubit[], target : Qubit) : Unit is Adj {
    for (i, qubit) in input.Indexed() {
        if (i == 0 || i == 3 || i == 4 || i == 7) {
            X(qubit);
        }
    }
    H(target);
    Controlled X(input, target);
    H(target);
    for (i, qubit) in input.Indexed() {
        if (i == 0 || i == 3 || i == 4 || i == 7) {
            X(qubit);
        }
    }
}