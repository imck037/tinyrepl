# 🧠 TinyREPL

TinyREPL is a **programming language project** built to learn and explore how **lexers, parsers, and interpreters** work internally.
I am starting with a **Flex + Bison** based lexer and parser, and will make it into a full interpreter.

---

## 🚀 Current Features

* ✅ Lexical analysis using **Flex**
* ✅ Syntax parsing using **Bison**
* ✅ Interactive input (REPL-style parsing)
* ✅ Arithmetic expressions
* ✅ Variable assignment
* ✅ Clean project structure

---

## 🗂 Project Structure

```
tinyrepl/
├── Makefile
├── src/
│   ├── lexer.l      # Flex lexer
│   └── parser.y     # Bison parser
├── build/           # Generated files (auto-created)
└── README.md
```

---

## 🛠 Build Instructions

### Requirements

* `gcc`
* `flex`
* `bison`
* `make`

### Build

```bash
make
```

### Run

```bash
./tinyrepl
```

### Clean

```bash
make clean
```

---

## 🧪 Example Usage

```text
> x = 10
> y = x * 2
> y + 5
25
```

---

## 🎯 Project Goals

This project is being built incrementally to understand:

* How lexers work (tokenization)
* How parsers work (grammar + syntax rules)
* How interpreters execute code
* How REPLs are implemented
* How languages manage state and variables
* How AST-based interpreters work
* How real languages are structured internally

---

## 🧭 Roadmap

Planned features:

* [ ] AST-based interpreter
* [ ] Symbol table module
* [ ] Control flow (`if`, `while`)
* [ ] Functions
* [ ] File execution mode
* [ ] Error recovery
* [ ] Type system
* [ ] Bytecode VM (advanced)

---

## 📄 License

GNU General Public License

---
