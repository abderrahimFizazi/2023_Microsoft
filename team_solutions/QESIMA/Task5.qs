open Microsoft.Quantum.Canon;
open Microsoft.Quantum.Diagnostics;

operation Task5(input : Qubit[], target : Qubit) : Unit is Adj {
    using (ctrl = Qubit()) {
        for (idx, i) in [0, 9, 18, 21, 27, 36, 42, 45, 54, 63].ZipIndex() {
            if (idx == 0) {
                X(ctrl);
            }
            Controlled X([input[i % 6], ctrl], target);
            if (idx < 9) {
                Toffoli([ctrl, input[(i + 9) % 6]], ctrl);
            }
        }
    }
}