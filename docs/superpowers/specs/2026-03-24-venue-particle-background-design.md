# Venue Particle Background Design

**Date:** 2026-03-24

**Goal**

Add a decorative animated particle effect behind the homepage `venue` section without changing the existing page background, card interactions, or overall site visual hierarchy.

**Context**

The homepage already uses an animated `three.js` canvas in the testimonial section. The `venue` section currently uses a static `var(--grey)` background and contains interactive venue cards that must remain fully readable and clickable.

**Approved Direction**

Use a second section-scoped canvas inside `#venue` and render a restrained particle field with the existing `three.js` dependency. Do not import `particles.js`, do not use hover or click interactivity, and do not bring over the sample code's background image or full-page background behavior.

**Architecture**

- Add a dedicated `canvas` element inside `#venue` as a background layer.
- Keep `#venue` on its current `var(--grey)` background.
- Raise the content wrapper above the canvas with stacking context so the cards and text remain unchanged functionally.
- Implement a small inline `three.js` renderer scoped to `#venue`, following the testimonial section's existing animation pattern.

**Visual Design**

- Use a triangular particle field inspired by the supplied effect.
- Keep motion slow and decorative only.
- Use the testimonial section's base background color `#020b16` as the particle palette anchor.
- Use transparent tonal variants of that color for particles and connecting lines so the effect remains subtle against the grey venue background.
- Avoid visual competition with the venue cards by keeping density, line brightness, and motion restrained.

**Performance**

- Render only within the `#venue` section.
- Disable pointer interaction with `pointer-events: none`.
- Pause rendering when the section is off-screen with `IntersectionObserver`.
- Use responsive sizing and a lower particle count on smaller viewports.

**Constraints**

- Do not change the current page background outside the effect layer.
- Do not add hover or click particle behaviors.
- Do not add a stats panel.
- Do not add a new JS dependency.
- Do not alter venue card content, layout, or navigation behavior.

**Testing**

- Add a regression check that confirms `index.html` includes:
  - a background canvas inside `#venue`
  - the CSS needed to layer the canvas behind content
  - a decorative-only venue particle renderer using the testimonial color anchor

**Files Expected**

- Modify `index.html`
- Add lightweight test coverage under `tests/`
