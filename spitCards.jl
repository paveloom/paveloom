include("SpitCard.jl")
using .SpitCard

# Minor
begin

    spitcard(
        "Makefiles",
        "Makefile",
        "Шаблоны make-файлов для компиляции программ",
        "и публикации кода на GitHub";
        show_owner = true,
        repo_owner = "paveloom-m",
    )

    spitcard(
        "QtSettingsDemo",
        "Makefile",
        "Генератор файла settings: демонстрация графического",
        "интерфейса, созданного средствами Qt в среде Qt Creator";
        repo_owner = "paveloom-m",
        show_owner = true,
        archived = true,
    )

end

# Packs
begin

    spitcard(
        "P1",
        "Fortran",
        "Программы с вычислительного практикума",
        "(Прокопьева М. С.), 4-ый семестр";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P2",
        "Fortran",
        "Программы с курса Игоря Яковлева по",
        "программированию, 4-ый семестр";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P3",
        "Fortran",
        "Наработки по программированию на Fortran",
        "(Шнейвайс А. Б.) за 1\u20133-ий семестры";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P5",
        "R",
        "Скрипты и программы с астрометрической практики",
        "(лето между 4-ым и 5-ым семестрами)";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P6",
        "Fortran",
        "Программы с вычислительного практикума",
        "(Прокопьева М. С.), 5-ый семестр";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P7",
        "Python",
        "Скрипты с курса программирования на Python,",
        "5-ый семестр";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P8",
        "PostScript",
        "Процедуры и программы с курса астрономического",
        "программного обеспечения, 6-ой семестр";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

    spitcard(
        "P9",
        "Fortran",
        "Программы с курса небесной механики, 6-ой семестр";
        show_owner = true,
        repo_owner = "paveloom-p",
        archived = true,
    )

end

# Docker
begin

    spitcard(
        "dev",
        "Shell",
        "A Docker image containing my personal",
        "development environment";
        show_owner = true,
        repo_owner = "paveloom-d",
    )

    spitcard(
        "binder-base",
        "Shell",
        "Yet another base image for Binder";
        show_owner = true,
        repo_owner = "paveloom-d",
        template = true,
    )

    spitcard(
        "binder-tex",
        "Shell",
        "Basically, `paveloom/binder-base` + TeX dependencies";
        show_owner = true,
        repo_owner = "paveloom-d",
        template = true,
    )

    spitcard(
        "binder-julia",
        "Shell",
        "Basically, `paveloom/binder-base` + Julia";
        show_owner = true,
        repo_owner = "paveloom-d",
        template = true,
    )

    spitcard(
        "binder-julia-plots",
        "Shell",
        "If `paveloom/binder-julia` and `paveloom/binder-tex`",
        "had a baby";
        show_owner = true,
        repo_owner = "paveloom-d",
        template = true,
    )

end

# Julia
begin

    spitcard(
        "Scats.jl",
        "Julia",
        "Spectral correlation analysis of time series",
        "(not supposed to be used)";
        show_owner = true,
        repo_owner = "paveloom-j",
    )

    spitcard(
        "PDFHighlights.jl",
        "Julia",
        "Export highlights from PDF files to a CSV file",
        "using one command";
        show_owner = true,
        repo_owner = "paveloom-j",
    )

end

# Complex
begin

    spitcard(
        "C1",
        "Fortran",
        "Модуль для выполнения спектрально-корреляционного",
        "анализа равномерных временных рядов";
        show_owner = true,
        repo_owner = "paveloom-c",
        archived = true,
    )

    spitcard(
        "C3",
        "Fortran",
        "Построение коррелограммы и периодограммы",
        "одномерных неравномерных временных рядов";
        show_owner = true,
        repo_owner = "paveloom-c",
        archived = true,
    )

    spitcard(
        "GPKernels",
        "Jupyter Notebook",
        "Study of the influence of selection of kernels for",
        "Gaussian processes on the modeling of light curves";
        show_owner = true,
        repo_owner = "paveloom-c",
    )

end
