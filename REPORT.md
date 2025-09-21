# REPORT.md

## Q1. Explain the linking rule in this part's Makefile: `$(TARGET): $(OBJECTS)`. How does it differ from a Makefile rule that links against a library?

The rule `$(TARGET): $(OBJECTS)` specifies that the final executable program (the target) depends on all the object files in the project.  
When this rule is executed, the compiler/linker takes every `.o` file listed in `$(OBJECTS)` and links them together into one executable binary.  

This is different from linking against a library. In that case, instead of linking multiple individual object files, we only link the program against a precompiled static or dynamic library (e.g., `-lmylib.a` or `-lm`). A library is a reusable collection of object files, whereas `$(OBJECTS)` in this case directly represents the separate compiled files of our project.

---

## Q2. What is a git tag and why is it useful in a project? What is the difference between a simple tag and an annotated tag?

A **Git tag** is a reference to a specific commit that is usually used to mark important points in the project’s history, such as a release version. Tags are very useful because they provide a way to mark stable builds or milestones, making it easier to return to or reference them later.  

- **Simple (lightweight) tag**: A plain pointer to a commit, with no additional metadata.  
- **Annotated tag**: A full Git object that contains metadata such as the tagger’s name, email, date, and a descriptive message. It is cryptographically stored in Git and is considered the best practice for marking official release versions.

---

## Q3. What is the purpose of creating a "Release" on GitHub? What is the significance of attaching binaries (like your client executable) to it?

A **Release** on GitHub is a packaged distribution of the project, tied to a Git tag. It serves as a way to officially publish and distribute stable versions of the project.  

The main purposes of a release are:  
- To clearly mark a stable point in development.  
- To provide end-users with ready-to-use code or executables.  

Attaching binaries (e.g., the `bin/client` executable) allows users to download and use the program without having to compile it from source code themselves. This is especially helpful for non-developers or users who only want to run the application directly.
# REPORT.md

## Q1. Explain the linking rule in this part's Makefile: `$(TARGET): $(OBJECTS)`. How does it differ from a Makefile rule that links against a library?

The rule `$(TARGET): $(OBJECTS)` specifies that the final executable program (the target) depends on all the object files in the project.  
When this rule is executed, the compiler/linker takes every `.o` file listed in `$(OBJECTS)` and links them together into one executable binary.  

This is different from linking against a library. In that case, instead of linking multiple individual object files, we only link the program against a precompiled static or dynamic library (e.g., `-lmylib.a` or `-lm`). A library is a reusable collection of object files, whereas `$(OBJECTS)` in this case directly represents the separate compiled files of our project.

---

## Q2. What is a git tag and why is it useful in a project? What is the difference between a simple tag and an annotated tag?

A **Git tag** is a reference to a specific commit that is usually used to mark important points in the project’s history, such as a release version. Tags are very useful because they provide a way to mark stable builds or milestones, making it easier to return to or reference them later.  

- **Simple (lightweight) tag**: A plain pointer to a commit, with no additional metadata.  
- **Annotated tag**: A full Git object that contains metadata such as the tagger’s name, email, date, and a descriptive message. It is cryptographically stored in Git and is considered the best practice for marking official release versions.

---

## Q3. What is the purpose of creating a "Release" on GitHub? What is the significance of attaching binaries (like your client executable) to it?

A **Release** on GitHub is a packaged distribution of the project, tied to a Git tag. It serves as a way to officially publish and distribute stable versions of the project.  

The main purposes of a release are:  
- To clearly mark a stable point in development.  
- To provide end-users with ready-to-use code or executables.  
Attaching binaries (e.g., the `bin/client` executable) allows users to download and use the program without having to compile it from source code themselves. This is especially helpful for non-developers or users who only want to run the application directly.

---

### **1. Makefile Comparison (Part 2 vs Part 3)**

* Part 2 compiles all source files directly and links them into the executable.
* Part 3 creates a static library (`libmyutils.a`) from utility functions and links the main program against it.
* Key difference: Part 3 separates reusable code into a library, improving modularity and reducing recompilation time.

---

### **2. Purpose of `ar` and `ranlib`**

* `ar` archives object files into a static library.
* `ranlib` generates a symbol index in the library for faster linking and compatibility.
* Together, they create a library that can be linked into executables.

---

### **3. Observing Symbols in `client_static`**

* Running `nm` shows that library functions like `mystrlen` are **already included** in the executable.
* This demonstrates **static linking**, where all code from the library is copied into the final program at compile time.

---

