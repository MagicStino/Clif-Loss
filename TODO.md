# Clif Loss — later work

## Windows and macOS VST (deferred by user, 2026-10-29)
- Build a separate portable processing backend: the Force version executes ARMv7 firmware directly and cannot be renamed or rebuilt unchanged as an x86-64/Apple Silicon plugin.
- Evaluate an emulated firmware backend against the existing reference recordings and real-time CPU limits before committing to it.
- Provide a desktop VST3 wrapper and editor with the same controls, presets and state migration.
- Keep firmware user-supplied; do not embed it in public installers.
- Test Windows x64 and macOS Apple Silicon/Intel in actual hosts, including sample rates, automation, state, editor opening and offline rendering.
- Decide signing/notarization and distribution after functioning builds are validated.
- No Windows/macOS build is currently released or claimed tested.

## Hardware follow-up
- Confirm newest translucent panels and Mix label on Force touchscreen.
- Record Q-Link/MIDI automation and reload a project using independent noise switches.
- Measure sustained CPU headroom under a representative loaded project.
