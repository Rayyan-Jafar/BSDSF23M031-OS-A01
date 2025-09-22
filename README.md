# BSDSF23M031-OS-A01
Operating System

````markdown
# C Project with Libraries, Builds, and Documentation

This project demonstrates building C executables, static and dynamic libraries, and proper documentation using **Makefiles**, **man pages**, and **Git workflow**.  
It is structured into multiple features (phases), each representing a milestone in the assignment.

---

## 📌 Project Features

### Feature 1: Basic Executable (`myexe`)
- Source files compiled into a single executable.
- Demonstrates string and file utility functions.

### Feature 2: Static Library (`libmyutils.a`) and Client (`client_static`)
- Code refactored into a static library.
- A client program (`client_static`) links against the static library.

### Feature 3: Dynamic Library (`libmyutils.so`) and Client (`client_dynamic`)
- Functions compiled into a shared library.
- Client program (`client_dynamic`) dynamically links to the library at runtime.
- Demonstrates use of **`-fPIC`**, **`-shared`**, and runtime linking.

### Feature 4: Installation and Documentation
- **Man pages** created for executables (`man1/`) and library functions (`man3/`).
- **Install target** in the Makefile to copy binaries and man pages to system directories.
- **Uninstall target** to remove installed files.

---

## 🛠️ Build Instructions

### Build All
```bash
make
````

### Build Static Client

```bash
make client_static
```

### Build Dynamic Client

```bash
make client_dynamic
```

### Clean Build

```bash
make clean
```

---

## 📖 Install & Uninstall

### Install

```bash
sudo make install
```

This copies:

* `bin/client_dynamic` → `/usr/local/bin/client_dynamic`
* `man/man1/client_dynamic.1` → `/usr/local/share/man/man1/client_dynamic.1`
* (additional executables or man pages as needed)

After installation:

```bash
client_dynamic       # runs from anywhere
man client_dynamic   # opens installed man page
```

### Uninstall

```bash
sudo make uninstall
```

This removes installed binaries and man pages.

---

## 📂 Directory Structure

```
project-root/
├── src/                # C source files
├── include/            # Header files
├── obj/                # Object files
├── bin/                # Built executables
├── lib/                # Libraries (.a and .so)
├── man/
│   ├── man1/           # Man pages for executables
│   └── man3/           # Man pages for library functions
├── Makefile            # Build and install instructions
└── REPORT.md           # Assignment answers
```

---

## 🔀 Git Workflow

* Each feature was developed in a **separate branch**:

  * `static-build`
  * `dynamic-build`
  * `man-pages`
* After completion, branches were **merged into `main`**.
* Annotated **tags** created for each release:

  * `v0.1.1-initial` → `myexe`
  * `v0.2.1-static` → static library + client
  * `v0.3.1-dynamic` → dynamic library + client
  * `v0.4.1-final` → install + man pages

All branches and tags were pushed to GitHub, and a **release was published for each version**.

---

## 📦 Releases & Binaries

* **Version 0.1.1 – Initial Build**

  * Binary: `bin/myexe`

* **Version 0.2.1 – Static Library Build**

  * Binaries: `lib/libmyutils.a`, `bin/client_static`

* **Version 0.3.1 – Dynamic Library Build**

  * Binaries: `lib/libmyutils.so`, `bin/client_dynamic`

* **Version 0.4.1 – Final Build with Man Pages**

  * Binary: `bin/client_dynamic`
  * Man pages: `man/man1/client_dynamic.1`, `man/man3/*.3`

---

## 👨‍💻 Author

**Rayyan Jafar**
📧 \[(mailto:mrayyanjafar11@@gmail.com)]

---
```
