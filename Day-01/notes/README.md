# Basic Logic Gates

## Overview
Logic gates are the fundamental building blocks of digital electronics. They perform logical operations on one or more binary inputs to produce a binary output. Every digital system, including computers, microcontrollers, and FPGAs, is built using logic gates.

---

# Logic Gates

## 1. AND Gate

### Definition
An AND gate produces a HIGH (1) output only when **all inputs are HIGH (1)**.

### Boolean Equation
```
Y = A · B
```

### Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Applications
- Enable circuits
- Digital control systems
- Address decoding
- Safety systems

---

## 2. OR Gate

### Definition
An OR gate produces a HIGH (1) output when **at least one input is HIGH (1)**.

### Boolean Equation
```
Y = A + B
```

### Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

### Applications
- Alarm systems
- Emergency circuits
- Signal combining
- Decision-making circuits

---

## 3. NOT Gate

### Definition
A NOT gate (Inverter) produces the complement of its input.

### Boolean Equation
```
Y = A'
```

### Truth Table

| A | Y |
|:-:|:-:|
| 0 | 1 |
| 1 | 0 |

### Applications
- Signal inversion
- Active-low circuits
- Complement generation
- Digital logic

---

## 4. NAND Gate

### Definition
A NAND gate is the complement of the AND gate.

### Boolean Equation
```
Y = (A · B)'
```

### Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### Applications
- Universal gate
- Flip-flops
- Memory circuits
- Clock gating

---

## 5. NOR Gate

### Definition
A NOR gate is the complement of the OR gate.

### Boolean Equation
```
Y = (A + B)'
```

### Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

### Applications
- Universal gate
- Latches
- Memory devices
- Digital control systems

---

## 6. XOR Gate

### Definition
An XOR (Exclusive-OR) gate produces a HIGH output when the inputs are different.

### Boolean Equation
```
Y = A'B + AB'
```

### Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### Applications
- Half Adder
- Full Adder
- Parity Generator
- Error Detection
- Digital Comparators

---

## 7. XNOR Gate

### Definition
An XNOR (Exclusive-NOR) gate produces a HIGH output when both inputs are equal.

### Boolean Equation
```
Y = AB + A'B'
```

### Truth Table

| A | B | Y |
|:-:|:-:|:-:|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Applications
- Equality Comparators
- Error Detection
- Pattern Matching
- Digital Comparison

---

# Universal Gates

## NAND Gate
- Can implement all basic logic gates.
- Known as a **Universal Gate**.

## NOR Gate
- Can implement all basic logic gates.
- Also known as a **Universal Gate**.

---

# Comparison Table

| Gate | Boolean Equation | Output Condition |
|------|------------------|------------------|
| AND | `Y = A·B` | HIGH only when both inputs are HIGH |
| OR | `Y = A + B` | HIGH when at least one input is HIGH |
| NOT | `Y = A'` | Inverts the input |
| NAND | `Y = (A·B)'` | LOW only when both inputs are HIGH |
| NOR | `Y = (A+B)'` | HIGH only when both inputs are LOW |
| XOR | `Y = A'B + AB'` | HIGH when inputs are different |
| XNOR | `Y = AB + A'B'` | HIGH when inputs are equal |

---

# Conclusion

Basic logic gates are the foundation of digital electronics and digital system design. Understanding their Boolean equations, truth tables, and practical applications is essential for designing combinational circuits, sequential circuits, and FPGA/ASIC-based systems.

---

**Tools Used**
- Verilog HDL
- Xilinx Vivado
- XSIM Simulator

**Author**
- Kaushik Kulal
