# Clif Loss usage guide

Clif Loss is a stereo insert effect for compatible ARMv7 Akai Force / MPC custom-plugin hosts. It adds tape colour, pitch movement, wear and noise to an existing sound. It does not record audio or control playback.

## Start here

1. Add **Clif Loss** to an effect slot on the track you want to process.
2. Pick a preset. **Soft Focus** and **Warm VHS** are gentle starting points; **Rhodes Drive** adds drive to electric piano; **Noisy Rhodes** adds a noisier texture.
3. Start with **Mix at 40% wet**, the factory default. Turn it up to hear the processing clearly, then blend it back to taste.
4. Adjust **Volume** to compare processed and bypassed sound at a similar loudness.
5. Use the host's normal effect bypass for an A/B comparison. There is no Tape Stop or Aux transport control.

## Tone page

The **Tape / Digital** switch changes the engine and three control meanings:

| Position | Tape | Digital |
|---|---|---|
| Left | **Model:** Off plus 12 recording-character models | **Low-pass:** reduces the high-frequency range |
| Middle | **Saturate:** adds drive | **DEGRADE:** increases degradation as its value rises |
| Right | **Failure:** introduces irregular tape wear | **High-pass:** reduces the low-frequency range |

In Tape mode, use the large arrows to move one model at a time. The name beneath the knob identifies the selection. Off means unfiltered by the model selector; it does not bypass the entire effect.

**Crackle** sets the audible crackle component. In Tape mode it depends strongly on Failure: with Failure near zero it can be effectively silent. Crackle has a 2× level boost (+6 dB), while retaining a silent zero setting. It is still a subtle texture on some sources.

**Spread** changes left/right behaviour. In Tape mode it works with Failure and produces irregular stereo movement, rather than a constant wide stereo image. For a clear comparison use headphones, increase Failure and temporarily raise Mix. In Digital mode its stereo movement is linked to Wow. Don't expect Spread alone to make every source dramatically wider.

## Motion page

- **Wow:** slow pitch drift.
- **Flutter:** faster pitch movement.
- **Mono to Stereo:** selects mono-input/stereo-output routing. It is useful for mono source material, but does not by itself guarantee obvious widening. Try it with Spread and the relevant Failure/Wow setting.
- **Mix / Volume:** the same shared controls shown on every page.

## Tape Noise page

Two matching groups work independently:

| Group | Knob | Switch |
|---|---|---|
| Hiss | **Noise Level** controls hiss amount | **Noise Sound** turns hiss on/off |
| Mechanical | **Mechanical** moves from VCR character through Silent to hum character | **Mech Sound** turns mechanical noise on/off |

Turning either switch off keeps its knob setting. The Mechanical centre is intentionally silent, even when Mech Sound is on. Noise Sound does not mute Mechanical, and Mech Sound does not mute hiss.

Older presets retain their original hidden Mild/Heavy noise range when loaded. Enabling a previously disabled noise path can select the full range; use the relevant knob to set the amount. Mix also blends both noise components with the dry signal.

## Mix and Volume

**0% wet** is the original signal; **100% wet** is the processed signal. The blend is linear and the dry path is latency-aligned. Use 100% briefly to inspect subtle details, then return to the blend that suits your track. The touchscreen shows a spaced percentage and “wet”; some host parameter overlays show the percentage alone.

Volume belongs to the processed engine. It is not an input-gain control and does not replace the host's track fader.

## Q-Links and automation

| Page | Q-Link order |
|---|---|
| Tone | Engine, Model/Low-pass, Saturate/DEGRADE, Failure/High-pass, Crackle, Spread, Mix, Volume |
| Motion | Wow, Flutter, Mono to Stereo, Mix, Volume |
| Tape Noise | Noise Level, Noise Sound, Mechanical, Mech Sound, Mix, Volume |

The switches have one full clickable area; tap anywhere on a switch to change state. Model arrows select the adjacent model. Q-Link rotation and normal host parameter automation remain available. Touching a physical Q-Link knob alone is not a trigger feature.

Direct MIDI CC assignments: 14 Wow, 15 Volume, 16 Model/Low-pass, 17 Flutter, 18 Saturate/DEGRADE, 19 Failure/High-pass, 72 Tape/Digital. CC72 zero selects Tape; a nonzero value selects Digital. Other controls use host automation/Q-Link assignment. MIDI must reach the effect through the host's routing.

## Presets and saving

Fifteen factory programs are included, also delivered as native MPC .xpl presets. Save your own preset or project after editing. Existing v3 preset chunks still load unchanged. Independent noise-switch states are saved in v4 chunks and require the current plugin; older builds cannot read those new states.

Factory choices: Clean Start, Soft Focus, Warm VHS, Worn Cassette, Rhodes Drive, Noisy Rhodes, Wide Memories, Cliff Edge, Dusty Loop, Classic Haze, Velvet Keys, Chorus Drift, Crunchy Drums, Old Radio and Broken Reel.

## Troubleshooting

- **No crackle:** use Tape, increase Failure, raise Crackle and temporarily use 100% Mix. On a loud source it can still be masked.
- **Spread is subtle:** compare on headphones; Tape needs Failure for its stronger irregular stereo effect, Digital uses Wow.
- **No mechanical sound:** move the knob away from Silent and enable Mech Sound.
- **Noise remains after Noise Sound is off:** Mechanical and Crackle are separate components.
- **Preset UI:** controls should follow preset recall. If they do not, confirm you installed the current build.
- **Installation:** this is a custom-host ARM plugin, not a stock Akai installer. Windows/macOS versions are deferred.

