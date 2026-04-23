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

## How to generate the PDF document

Download or clone the repository to your local machine. Once the `*.tex` and `references.bib` files have been updated with new content, double-click `typeset_document.bat` to generate the PDF document. The script uses `pdflatex` and `biber`, which are included in MiKTeX installation, to perform the following steps:

1. Deletes every file in `build/`.
2. Runs `pdflatex` to generate an initial version of the document.
3. Runs `biber` to process the bibliography.
4. Runs `pdflatex` two additional times to resolve all references and figures.
5. The final PDF is generated inside `build/` and named as `main.pdf`.

LaTeX requires multiple passes to correctly resolve cross-references and figures. During the first run, LaTeX collects information about elements such as citations, figures, tables, and the table of contents, and writes this data to auxiliary files. Then, `biber` process the bibliography based on that information. Subsequent runs of `pdflatex` use the updated auxiliary files to correctly insert references, numbering, and links.

## Available functions/commands

The LaTeX commands available in this template are provided by the following packages:

- `amsmath` — advanced mathematical typesetting (equations, alignments, etc.)  
- `amssymb` — additional mathematical symbols  
- `biblatex` — bibliography management and citation formatting  
- `babel` — language support and hyphenation rules  
- `calc` — arithmetic operations with LaTeX lengths and counters  
- `caption` — customization of figure and table captions  
- `doi` — formatting of DOI links in references  
- `etoolbox` — programming tools for conditional logic and macro patching  
- `fancyhdr` — custom headers and footers  
- `float` — improved control over figure and table placement  
- `fontenc` — font encoding configuration  
- `geometry` — page layout and margin settings  
- `graphicx` — inclusion and manipulation of images  
- `hyperref` — hyperlinks within the document (cross-references, URLs)  
- `cleveref` — intelligent cross-referencing (automatic labels like “Figure”, “Table”)  
- `lipsum` — dummy text generation (for testing/layout)  
- `lmodern` — enhanced Latin Modern fonts  
- `mfirstuc` — capitalization of the first letter of words  
- `multicol` — multiple-column text formatting  
- `multirow` — table cells spanning multiple rows  
- `setspace` — line spacing control  
- `titlesec` — customization of section titles  
- `tocloft` — customization of the table of contents  
- `xcolor` — color support for text and elements  
- `array` — extended control over arrays and tabular environments  
- `booktabs` — improved table formatting (professional-quality tables)  
- `tabularx` — tables with adjustable-width columns

### Custom commands

This template defines two custom commands for cross-referencing, based on the functionality provided by the `hyperref` and `cleveref` packages.

In standard LaTeX:
- `\ref` produces only the reference number (e.g., 3.2, 5)
- `\Cref` produces the reference with its label (e.g., Figure 3.2, Chapter 5)

To improve readability, this template introduces:
- `\bref` — a bold version of `\ref` (e.g., **3.2**, **5**)
- `\bCref` — a bold version of `\Cref` (e.g., **Figure 3.2**, **Chapter 5**)

These commands behave identically to their original counterparts but display the references in bold font, making them easier to identify within the text.

## LaTeX help links

https://www.learnlatex.org/en/

https://www.overleaf.com/learn

https://ctan.org/
