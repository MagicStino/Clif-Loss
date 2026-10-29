# Clif Loss

![Clif Loss artwork](github-cover.png)

**By MagicStino.** A stereo tape-character insert effect for compatible ARMv7 Akai Force / MPC custom-plugin setups. Large white controls, three Q-Link pages, named recording models, independent hiss/mechanical noise switches, and fifteen factory presets. Mix starts at **40% wet**.

**[Usage guide](USAGE.md) · [Installation](INSTALL.md) · [Presets](PRESETS.md) · [Later work](TODO.md)**

![Tone page](Preview.png)

## Use it

Insert Clif Loss on an audio track, select a preset, then choose Tape or Digital. Tape offers Model, Saturate and Failure; Digital changes those controls to Low-pass, DEGRADE and High-pass. Wow and Flutter live on Motion. Independent noise controls live on Tape Noise. Mix and Volume stay available on every page.

Try **Rhodes Drive** for electric piano grit, **Noisy Rhodes** for a dirtier texture, or **Soft Focus** for gentle colour. For subtle crackle/stereo effects, temporarily raise Mix and Failure in Tape mode. See the [usage guide](USAGE.md) for the control relationships.

There are no pedal-style Aux or Tape Stop controls. Use the host's insert bypass.

## Get it

**Ready-built installation:** open Plugin Manager → CATALOG → Refresh catalog → Clif Loss → INSTALL → CONTINUE → INSTALL & RESTART. Save your project before restarting. No compiling or extra files are needed.

[Download Clif Loss 0.1.0](Clif-Loss-0.1.0-mpc-armv7.zip) for manual installation, or read the [installation guide](INSTALL.md). To remove it, use Plugin Manager → INSTALLED → Clif Loss → REMOVE, or the included uninstall script.

Target: compatible ARMv7 custom-plugin host, OS 3.x skin. It is not a stock Akai plug-in installer. **Windows/macOS VST work is deferred** and tracked in [TODO.md](TODO.md).

## Current design and checks

- Tone, Motion and Tape Noise pages with Q-Link mappings and host automation.
- Off plus 12 named Tape model positions; mode-aware labels and DEGRADE direction.
- Full-area On/Off switches and independent hiss/mechanical states.
- Tape crackle boosted 2× (+6 dB) at the user's request.
- Smaller Mix slider artwork with a retained touch target, readable spaced value and transparent cliff panels.
- All fifteen original native presets tested; original v3 values preserved. New independent switch states use v4 chunks.
- ARM-host tests cover four sample rates, variable block sizes, bypass alignment, state validation, display refresh and independent instances.
- Preview.11 installed and restarted successfully on a Force; the latest panel transparency is an artwork follow-up. Hardware listening and touch checks remain distinct from automated tests.

