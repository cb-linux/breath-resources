alsa_monitor.rules = {
    {
      matches = {
        {
          { "node.name", "matches", "alsa_input.platform-skl_n88l25_m98357a.HiFi__hw_sklnau8825max_1__source" },
        },
      },
      apply_properties = {
        ["audio.format"]           = "S16LE",
      },
    },
  }
  