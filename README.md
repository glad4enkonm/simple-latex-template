# LaTeX Exam Preparation Notes

This project is a LaTeX template for generating a PDF document of exam preparation notes. It is structured to handle individual "tickets" or questions, making it easy to manage and organize content.

## Features

- **Modular Design**: Each exam question and its answer is stored in a separate `.tex` file in the `tickets/` directory.
- **Automatic Table of Contents**: The main document automatically generates a table of contents based on the questions in the tickets.
- **Custom Styling**: A custom style package (`styles.sty`) is used for consistent formatting, including page margins, fonts, and hyperlink colors.
- **Simple Compilation**: A `Makefile` is included to simplify the process of compiling the LaTeX source into a PDF.

## Project Structure

```
.
├── tickets/
│   ├── ticket1.tex
│   └── ticket2.tex
├── main.tex
├── styles.sty
├── Makefile
└── main.pdf  (Generated)
```

- `main.tex`: The main LaTeX file that assembles the document.
- `styles.sty`: Custom LaTeX package for styling the document.
- `tickets/`: Directory containing the individual exam questions.
- `Makefile`: Contains commands to build the project.

## Prerequisites

To compile this project, you need a working LaTeX distribution installed on your system, such as:

- [TeX Live](https://www.tug.org/texlive/)
- [MiKTeX](https://miktex.org/)

You will also need the `latexmk` utility, which is typically included with modern TeX distributions.

## Usage

1.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    ```

2.  **Navigate to the project directory:**
    ```bash
    cd <project-directory>
    ```

3.  **Compile the project:**
    To generate the `main.pdf` file, run the following command:
    ```bash
    make
    ```
    This will use `latexmk` to handle all the necessary LaTeX compilations.

4.  **Clean up generated files:**
    To remove all auxiliary files created during compilation (e.g., `.aux`, `.log`, `.out`), run:
    ```bash
    make clean
    ```

## How to Add New Questions

1.  Create a new file in the `tickets/` directory (e.g., `tickets/ticket3.tex`).
2.  Use the custom `\ticket{}` command to define the question. This will automatically create a new section and add it to the table of contents.

    ```latex
    % In tickets/ticket3.tex
    \ticket{Your new question here?}

    \subsection*{Answer}
    Your detailed answer goes here.
    ```

3.  Open `main.tex` and add an `\input{}` command to include your new file.

    ```latex
    % In main.tex
    % ...
    \input{tickets/ticket1}
    \input{tickets/ticket2}
    \input{tickets/ticket3} % Add this line

    \end{document}
    ```

4.  Re-run `make` to update the PDF with the new content.
