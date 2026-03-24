# Venue Particle Background Implementation Plan

> **For agentic workers:** REQUIRED: Use superpowers:subagent-driven-development (if subagents available) or superpowers:executing-plans to implement this plan. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a decorative animated particle background behind the homepage venue section without changing the section's existing background or interactivity.

**Architecture:** Reuse the already loaded `three.js` library to render a second section-scoped canvas inside `#venue`. Layer the canvas behind the venue content, keep it non-interactive, and pause animation when the section is off-screen.

**Tech Stack:** Static HTML, inline CSS, inline JavaScript, `three.js`, PowerShell test script

---

## Chunk 1: Test and Layering Setup

### Task 1: Add a failing structural test for the venue effect

**Files:**
- Create: `tests/venue-background.test.ps1`
- Modify: `index.html`

- [ ] **Step 1: Write the failing test**

```powershell
$html = Get-Content index.html -Raw
if ($html -notmatch '<canvas id="venue-canvas"></canvas>') { throw 'Missing venue canvas' }
```

- [ ] **Step 2: Run test to verify it fails**

Run: `powershell -ExecutionPolicy Bypass -File tests/venue-background.test.ps1`
Expected: FAIL with a missing venue canvas error

- [ ] **Step 3: Write minimal implementation**

Add the `venue` canvas element and CSS layering hooks in `index.html`.

- [ ] **Step 4: Run test to verify it passes**

Run: `powershell -ExecutionPolicy Bypass -File tests/venue-background.test.ps1`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add tests/venue-background.test.ps1 index.html
git commit -m "test: cover venue background structure"
```

## Chunk 2: Decorative Particle Renderer

### Task 2: Add the venue particle animation

**Files:**
- Modify: `index.html`
- Test: `tests/venue-background.test.ps1`

- [ ] **Step 1: Extend the failing test**

Add checks for:
- venue canvas layering CSS
- non-interactive canvas behavior
- the venue renderer using `#020b16`
- decorative-only configuration with no hover/click handlers

- [ ] **Step 2: Run test to verify it fails**

Run: `powershell -ExecutionPolicy Bypass -File tests/venue-background.test.ps1`
Expected: FAIL because the renderer/config is not present yet

- [ ] **Step 3: Write minimal implementation**

Add an inline `three.js` animation block scoped to `#venue` that:
- creates triangular particles
- links nearby particles with subtle lines
- uses `#020b16` tonal variants
- pauses off-screen
- resizes with the section

- [ ] **Step 4: Run test to verify it passes**

Run: `powershell -ExecutionPolicy Bypass -File tests/venue-background.test.ps1`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add index.html tests/venue-background.test.ps1
git commit -m "feat: add decorative venue particle background"
```

## Chunk 3: Validation

### Task 3: Verify the page remains healthy

**Files:**
- Modify: `index.html`
- Test: `tests/venue-background.test.ps1`

- [ ] **Step 1: Run the targeted test**

Run: `powershell -ExecutionPolicy Bypass -File tests/venue-background.test.ps1`
Expected: PASS

- [ ] **Step 2: Run broader validation**

Run: `powershell -ExecutionPolicy Bypass -Command "$null = [IO.File]::ReadAllText('index.html'); Write-Output 'index.html parsed'"`.
Expected: `index.html parsed`

- [ ] **Step 3: Open the page for manual verification**

Verify:
- the venue section background remains grey
- the effect sits behind the cards
- no pointer interaction is captured
- motion is subtle on desktop and mobile widths

- [ ] **Step 4: Commit final polish if needed**

```bash
git add index.html tests/venue-background.test.ps1
git commit -m "chore: tune venue particle background"
```
