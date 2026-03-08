# Synthetic Health Data Masterclass Series 2026

This repository contains the source code for the official event website for the **Synthetic Health Data Education & Training Masterclass Series 2026**. The site is a single-page, responsive landing page designed to provide information about the masterclass series, including speakers, sessions, and registration details.

**Live Site:** [**https://digitalhealthcrc.github.io/SD_masterclass/**](https://digitalhealthcrc.github.io/SD_masterclass/)

---

## About the Project

The website is built with pure HTML, CSS, and JavaScript, with no build process or frameworks. It is designed to be lightweight, fast, and easily deployable on any static web host, including GitHub Pages.

### Key Features

*   **Responsive Design**: The layout adapts to all screen sizes, from mobile phones to large desktops.
*   **Interactive Hero Section**: Features a dynamic, animated background using Three.js and GSAP for a visually engaging experience.
*   **Animated Testimonial Background**: The testimonial section includes a custom Three.js animation to illustrate the concept of synthetic data generation.
*   **Scroll-triggered Animations**: Content sections fade and slide in as the user scrolls down the page, powered by IntersectionObserver.
*   **Single-file Architecture**: All HTML, CSS, and JavaScript are contained within a single `index.html` file for simplicity.

### Technologies Used

*   **HTML5**
*   **CSS3** (with custom properties/variables)
*   **JavaScript (ES6+)**
*   **Three.js**: For the hero and testimonial WebGL animations.
*   **GSAP (GreenSock Animation Platform)**: For the hero section scroll-based animations.

## Deployment

The site is deployed automatically via GitHub Pages from the `main` branch. A `.nojekyll` file is included in the root to ensure GitHub Pages serves the site without processing it through Jekyll.

## Development

To run the site locally, simply open the `index.html` file in a web browser. For best results, use a local web server to avoid potential CORS issues with local file access.

```bash
# Using Python's built-in HTTP server
python3 -m http.server 8080
```

Then open `http://localhost:8080` in your browser.
