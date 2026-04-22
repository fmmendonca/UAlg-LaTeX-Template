# LaTeX Template for UAlg Dissertations

This is a **LaTeX** template designed to assist students at the **University of Algarve** (UAlg) in writing their master's or doctoral dissertations. It complies with the structural and formal requirements set forth by the institution in Annex I of Regulation No. 114/2023, allowing students to focus on the academic content while the formatting is handled automatically.

Your contributions to this template are always welcome! If you have made improvements, corrections, or adaptations, please submit your changes as a *pull request* or share them via a *fork* with appropriate explanations. Any suggestions that help keep the template up to date, clear, and in line with the UAlg's guidelines will be greatly appreciated.

**This is an unofficial template, developed by the academic community.**

## Template Structure

- **Auxfiles/** – contains the `ualgclass.cls` class (document formatting instructions) and the `UAlg.jpg` image (university logo).
- **build/** – folder where LaTeX compiles the document into a PDF and stores all auxiliary files for the process.
- **figures/** – folder for storing the figures in the dissertation.
- **main.tex** – main document file. Contains the author’s information, title, abstract and summary, dedication, epigraph, tables of contents, and the inclusion of the chapters (`chapter_*.tex` files).
- **chapter_*.tex** – files containing the text of each chapter of the dissertation (e.g., `chapter_introduction.tex`, `chapter_methodology.tex`, etc.).
- **compose.bat** – file containing the command lines needed to compile the document on Windows.
- **references.bib** – the dissertation’s reference library (BibTeX format).
