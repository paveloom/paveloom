module SpitCard

export spitcard

const primary_langs = Dict{String, String}([
    "Makefile" => "#427819",
    "Fortran" => "#4d41b1",
    "R" => "#198CE7",
    "Python" => "#3572A5",
    "PostScript" => "#da291c",
    "Shell" => "#89e051",
    "Julia" => "#a270ba",
])

function spitcard(
    repo_name::AbstractString,
    primary_lang::AbstractString,
    line_1::AbstractString = "",
    line_2::AbstractString = "",
    output_path::AbstractString = joinpath(@__DIR__, "repos", repo_name * ".svg");
    archived::Bool = false,
    show_owner::Bool = false,
    repo_owner::AbstractString = "Paveloom"
)

    if !isdir(dirname(output_path))
        throw("There is no such directory.")
    end

    header = if show_owner
        "<tspan class=\"owner\">$repo_owner</tspan><tspan>/$repo_name</tspan>"
    else
        "<tspan>$repo_name</tspan>"
    end

    archived_badge = if archived
        """\n
            <g
              data-testid="badge"
              class="badge"
              transform="translate(300, -1.5)"
            >
              <rect
                stroke="#333"
                stroke-width="1"
                width="60"
                height="20"
                x="-12"
                y="-14"
                ry="10"
                rx="10">
              </rect>

              <text
                x="18" y="-5"
                alignment-baseline="central"
                dominant-baseline="central"
                text-anchor="middle"
                fill="#333"
              >
                Archived
              </text>
            </g>
        """
    else
        ""
    end

    open(output_path, "w") do io

        println(io, """
        <svg
          width="400"
          height="130"
          viewBox="0 0 400 130"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <style>
            .header {
              font: 600 14px 'Segoe UI', Ubuntu, Sans-Serif;
              fill: #0366d6;
              animation: fadeInAnimation 0.8s ease-in-out forwards;
            }
            .header .owner { font-weight: 400!important; }
            .description { font: 400 13px 'Segoe UI', Ubuntu, Sans-Serif; fill: #333 }
            .gray { font: 400 12px 'Segoe UI', Ubuntu, Sans-Serif; fill: #333 }
            .icon { fill: #586069 }
            .badge { font: 600 11px 'Segoe UI', Ubuntu, Sans-Serif; }
            .badge rect { opacity: 0.2 }
          </style>

          <rect
            data-testid="card-bg"
            x="0.5"
            y="0.5"
            rx="4.5"
            height="99%"
            stroke="#E4E2E2"
            width="399"
            fill="#fffefe"
            stroke-opacity="1"
          />

          <g
            data-testid="card-title"
            transform="translate(25, 35)"
          >
            <g
              transform="translate(0, 0)"
            >
              <svg
                class="icon"
                x="0"
                y="-13"
                viewBox="0 0 16 16"
                version="1.1"
                width="16"
                height="16"
              >

                <path
                  fill-rule="evenodd"
                  d="M2 2.5A2.5 2.5 0 014.5 0h8.75a.75.75 0 01.75.75v12.5a.75.75 0 01-.75.75h-2.5a.75.75 0 110-1.5h1.75v-2h-8a1 1 0 00-.714 1.7.75.75 0 01-1.072 1.05A2.495 2.495 0 012 11.5v-9zm10.5-1V9h-8c-.356 0-.694.074-1 .208V2.5a1 1 0 011-1h8zM5 12.25v3.25a.25.25 0 00.4.2l1.45-1.087a.25.25 0 01.3 0L8.6 15.7a.25.25 0 00.4-.2v-3.25a.25.25 0 00-.25-.25h-3.5a.25.25 0 00-.25.25z"
                />
              </svg>
            </g>

            <g
              transform="translate(25, 0)"
            >
              <text
                x="0"
                y="0"
                class="header"
                data-testid="header"
              >
                $header
              </text>
            </g>$(archived_badge[1:end-1])
          </g>

          <g
            data-testid="main-card-body"
            transform="translate(0, 50)"
          >
            <text
              class="description"
              x="25"
              y="-5"
            >
              <tspan
                dy="1.2em"
                x="25"
              >
                $line_1
              </tspan>

              <tspan
                dy="1.2em"
                x="25"
              >
                $line_2
              </tspan>

            </text>

            <g
              transform="translate(0, 55)"
            >
              <g
                data-testid="primary-lang"
                transform="translate(30, 0)"
              >
                <circle
                  data-testid="lang-color"
                  cx="0"
                  cy="-5"
                  r="6"
                  fill="$(primary_langs[primary_lang])"
                />

                <text
                  data-testid="lang-name"
                  class="gray"
                  x="15"
                >
                  $primary_lang
                </text>
              </g>
            </g>
          </g>
        </svg>
        """)

    end

end

end
