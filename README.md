# PRINCE-BlockCipher

The PRINCE block cipher is a modern lightweight symmetric-key encryption algorithm known for its excellent performance in hardware, particularly its low latency. This project provides a hardware description language (HDL) implementation of the PRINCE cipher, suitable for synthesis onto FPGAs or for use in ASIC designs.

1. Key Features of this Implementation:
* Algorithm: Implements the PRINCE block cipher (64-bit block size, 128-bit key).
* Language: Designed using Verilog HDL.
* Structure: This implementation is modular, breaking down the PRINCE cipher into its core components. It includes dedicated modules for:
* Round Constant Block: Generates and applies the round-dependent constants.
* S-Block: Implements the non-linear substitution layer (S-box operations).
* M-Block (M-matrix): Implements the linear diffusion layer.
* M' Block (M-prime matrix): Implements the reverse linear diffusion layer, utilized for decryption or specific PRINCE operations.
* Inverse Block: Implements the inverse of the non-linear substitution layer.
* Key Schedule: Includes the necessary key schedule generation for PRINCE.
* Functional Verification: A comprehensive testbench is provided to verify the correctness of the encryption process.

2. PRINCE Block Cipher Background
* PRINCE is a 64-bit block cipher with a 128-bit key. It was specifically designed for low-latency hardware implementations, making it suitable for resource-constrained environments like IoT devices and embedded systems.
* Its unique "alpha-reflection" property allows the same core hardware to be used for both encryption and decryption with a related key, significantly reducing area overhead for decryption.
