open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

operation Task9(input : Qubit, target : Qubit) : Unit is Adj {
    for i in [31,46,61,76,91,106,121,136,151,166,181,196,211,226,241] {
        ControlledOnInt(i, X)(input, target);
    }
}