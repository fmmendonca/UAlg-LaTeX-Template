# LaTeX Template for UAlg Dissertations

This is a **LaTeX** template designed to assist students at the University of Algarve (UAlg) in writing their master's or doctoral dissertations. It complies with the structural and formal requirements set forth by the institution in Annex I of Regulation No. 114/2023, allowing students to focus on the academic content while the formatting is handled automatically.

Your contributions to this template are always welcome! If you have made improvements, corrections, or adaptations, please submit your changes as a *pull request* or share them via a *fork* with appropriate explanations. Any suggestions that help keep the template up to date, clear, and in line with the UAlg's guidelines will be greatly appreciated.

**This is an unofficial template, developed by the academic community.**

## Template Structure

- **auxfiles/** – contains the `ualgphdcls.cls` class file (document formatting) and the `ualg_logo.png` image (university logo).
- **build/** – directory where LaTeX typesets (compiles) the PDF document and stores all auxiliary files for the process.
- **figures/** – folder for storing the dissertation figures.
- **main.tex** – main document file. Contains the author's and supervisor(s) information, title, abstract and resumo, acknowledgements, epigraph, tables of contents, and the imports for the chapters (`chapter_*.tex` files) and bibliography.
- **chapter_*.tex** – files containing the content of each dissertation chapter (e.g., `chapter_1.tex`, `chapter_2.tex`, etc.).
- **typeset_document.bat** – script containing the commands required to typeset (compile) the document on Windows systems.
- **references.bib** – bibliography file in BibTeX format.
  
## Requirements

The files can be edited using any preferred plain-text editor. This template was developed using **Visual Studio Code** (VS Code) and, although not required, its LaTeX extension. The extension improves the editing experience by providing features such as syntax highlighting, among others.

> **HINT**: When using the VS Code LaTeX extension, consider disabling the auto-compile feature on save to avoid unnecessary builds and potential errors while editing.

This template uses **MiKTeX** as the LaTeX distribution. On Windows systems, it can be installed via the Command Prompt (terminal) by running the following command:

```bash
winget install MiKTeX.MiKTeX
```

Once installed, open the **MiKTeX Console**, check and install all updates.

When typesetting (compiling) the dissertation document for the first time, MiKTeX will prompt you to install any missing packages. If a package continues to request installation in subsequent attempts, open the MiKTeX Console, navigate to the *Packages* tab, search for the package, and install it manually.

## How to use the template

Download or clone the repository to your local machine. When the `*.tex` and `references.bib` files are ready with new content, double-click `typeset_document.bat` to generate the PDF document. The script uses `pdflatex` and `biber`, which are included in MiKTeX installation, to perform the following steps:

1. Deletes every file in `build/`.
2. Runs `pdflatex` to generate an initial version of the document.
3. Runs `biber` to process the bibliography.
4. Runs `pdflatex` two additional times to resolve all references and figures.
5. The final PDF will be generated inside `build/` and named as `main.pdf`.

LaTeX requires multiple passes to correctly resolve cross-references and figures. During the first run, LaTeX collects information about elements such as citations, figures, tables, and the table of contents, and writes this data to auxiliary files. Then `biber` process the bibliography based on that information. Subsequent runs of pdflatex use the updated auxiliary files to correctly insert references, numbering, and links.

## LaTeX help links

https://www.learnlatex.org/en/

https://www.overleaf.com/learn
