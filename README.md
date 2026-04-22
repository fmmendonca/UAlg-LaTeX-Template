# LaTeX Template for UAlg Dissertations

This is a **LaTeX** template designed to assist students at the **University of Algarve** (UAlg) in writing their master's or doctoral dissertations. It complies with the structural and formal requirements set forth by the institution in Annex I of Regulation No. 114/2023, allowing students to focus on the academic content while the formatting is handled automatically.

Your contributions to this template are always welcome! If you have made improvements, corrections, or adaptations, please submit your changes as a *pull request* or share them via a *fork* with appropriate explanations. Any suggestions that help keep the template up to date, clear, and in line with the UAlg's guidelines will be greatly appreciated.

**This is an unofficial template, developed by the academic community.**

## Template Structure

- **auxfiles/** – contains the `ualgphdcls.cls` class file (document formatting) and the `ualg_logo.png` image (university logo).
- **build/** – directory where **LaTeX** typesets (compiles) the PDF document and stores all auxiliary files for the process.
- **figures/** – folder for storing the dissertation figures.
- **main.tex** – main document file. Contains the author's and supervisor(s) information, title, abstract and resumo, acknowledgements, epigraph, tables of contents, and the imports for the chapters (`chapter_*.tex` files) and bibliography.
- **chapter_*.tex** – files containing the content of each dissertation chapter (e.g., `chapter_1.tex`, `chapter_2.tex`, etc.).
- **compose.bat** – script containing the commands required to typeset (compile) the document on Windows systems.
- **references.bib** – bibliography file in BibTeX format.
  
## Requirements

The files can be edited using any preferred plain-text editor. This template was developed using **Visual Studio Code** (VS Code) and, although not required, its **LaTeX** extension. The extension improves the editing experience by providing features such as syntax highlighting, among others.

> **HINT**: When using the VS Code LaTeX extension, consider disabling the auto-compile feature on save to avoid unnecessary builds and potential errors while editing.

This template uses **MiKTeX** as the LaTeX distribution. On Windows systems, it can be installed via the Command Prompt (terminal) by running the following command:

```bash
winget install MiKTeX.MiKTeX
```

Once installed, open the **MiKTeX Console**, check and install all updates.

When typesetting (compiling) the dissertation document for the first time, MiKTeX will prompt you to install any missing packages. If a package continues to request installation in subsequent attempts, open the **MiKTeX Console**, navigate to the *Packages* tab, search for the package, and install it manually.

## How to use the template

## Help links

https://www.learnlatex.org/en/

https://www.overleaf.com/learn
