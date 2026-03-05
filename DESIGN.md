# Design System: Synthetic Health Data Masterclass Series

**Project ID:** sd-masterclass

## 1. Visual Theme & Atmosphere

The design direction is **premium, editorial, and sophisticated**, using the **"Dark Horse"** colour palette. The atmosphere is one of academic gravitas and data-driven authority, designed to appeal to an audience of researchers, policymakers, and technical experts. The aesthetic is defined by deep charcoal and slate backgrounds, which create a serious and focused mood, while a warm gold accent provides a touch of prestige and signals high value. The overall feeling is closer to a high-end scientific journal or a premium digital publication than a typical conference website.

## 2. Color Palette & Roles

The palette is built on a foundation of dark, muted tones with a single, strong accent colour for highlights and calls-to-action.

| Role | Colour Name | Hex Code | Usage |
|---|---|---|---|
| **Primary Background** | Dark Slate | `#1d1e22` | The foundational colour for the site, used in the hero, footer, and primary content sections to create a deep, immersive feel. |
| **Secondary Background** | Deep Matte Grey | `#393f4d` | A slightly lighter charcoal used for alternating content sections to create subtle visual separation and rhythm. |
| **Tertiary Background** | Silver Fox | `#d4d4dc` | A light grey used for specific content sections requiring higher contrast and a less intense background. |
| **Primary Accent** | Warm Gold | `#feda6a` | The sole, high-impact accent colour. Used for all interactive elements, including CTA buttons, links, heading underlines, and hover effects. |
| **Body Text (on Dark)** | Warm Off-White | `#f5f4f0` | Used for all body copy on dark backgrounds to ensure readability and provide a soft, non-jarring contrast. |
| **Body Text (on Light)** | Dark Slate | `#1d1e22` | Used for body copy on the Silver Fox background to maintain high contrast and readability. |
| **Subheading Accent** | Muted Gold | `#c9a84c` | A desaturated version of the primary gold, used for secondary text elements like speaker titles or metadata. |
| **Card Background** | Charcoal | `#2c2f3a` | A dedicated background colour for speaker and session cards, creating a distinct layer within sections. |

## 3. Typography Rules

Typography is clean, modern, and highly readable, with a clear hierarchy between headings and body text.

- **Headings Font**: A bold, geometric sans-serif font will be used for all `<h1>`, `<h2>`, and `<h3>` tags to convey a sense of structure and authority. The font will have a clean, technical feel.
- **Body Font**: A highly legible, neutral sans-serif font will be used for all paragraphs and lists, optimised for on-screen reading.
- **Hierarchy**: Visual hierarchy is established through size and colour. Section headings will be large and in the primary Gold (`#feda6a`) accent colour, while body text will be smaller and in Warm Off-White (`#f5f4f0`) or Dark Slate (`#1d1e22`) depending on the background.

## 4. Component Stylings

- **Buttons:** All primary call-to-action buttons (e.g., "Register", "Download Brochure") will be **pill-shaped** with a solid Gold (`#feda6a`) background and Dark Slate (`#1d1e22`) text. On hover, they will have a subtle lift or glow effect.
- **Cards/Containers:** Speaker and session cards will have **sharp, squared-off edges** and use the Charcoal (`#2c2f3a`) background. On hover, they will reveal a thin, 1px Gold (`#feda6a`) border.
- **Inputs/Forms:** Any form inputs will feature a simple, 1px border in Silver Fox (`#d4d4dc`) with a Dark Slate background, ensuring they are clearly visible but not distracting.

## 5. Layout & Animation Principles

The layout is structured as a series of full-viewport panels with immersive, scroll-driven transitions.

- **Layout Strategy**: The site will use a single-page, vertical scrolling layout. Each major content area (Hero, Welcome, Speakers, etc.) will occupy the full height of the viewport.
- **Section Transitions**: The transition between sections will be handled by the **GSAP ScrollTrigger pinned panels with overscroll** effect. As the user scrolls, the current section will be pinned while the next one slides up over it, creating a smooth, cinematic, and tactile experience.
- **Hero Animation**: The hero title, "Synthetic Health Data," will be animated on page load using the **GSAP ScrambleText** effect. The text will resolve from a scramble of random characters into the final words, rendered in Gold (`#feda6a`) to immediately draw attention and set a high-tech, data-centric tone.
- **Spacing**: Generous negative space will be used within each section to ensure content is breathable and focused. Margins and padding will be consistent to create a predictable and harmonious rhythm.
