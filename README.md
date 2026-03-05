# CaroGhana – Static NGO Website

A modern, professional static website for **CaroGhana** (Centre for Advancing Rural Opportunity), a youth-led community development organization in Ghana.

## Contents

Content is pulled from [caroghana.org](https://caroghana.org/) and structured into:

- **Home** – Hero, what we do, focus areas, about preview, latest causes, testimonials, sponsors, publications preview, CTA
- **About us** – Vision, mission, aims and objectives, areas of operation, core values
- **Causes** – List of programmes with links to individual project pages
- **Projects** (in `projects/`) – Dedicated pages for each programme: Enhancing communities, Ghana WASH Activity, Agriculture resilience
- **Publications** – Article list with full pages for each piece (hand hygiene, Gurungu Health Centre, WASH advocacy)
- **Contact** – Contact form and get-in-touch info

## Design

- **Typography:** Outfit (headings), Source Sans 3 (body)
- **Colors:** Primary green (#0d5c2e), accent amber (#c17f2c), warm off-white background
- **Layout:** Responsive, mobile-first, sticky header, clear sections
- **Accessibility:** Skip link, focus styles, semantic HTML, ARIA where needed

## Run locally

Open `index.html` in a browser, or use a simple static server:

```bash
# Python 3
python3 -m http.server 8000

# Node (npx)
npx serve .
```

Then visit `http://localhost:8000`.

## Form

The contact form is static. To collect submissions, hook it up to a backend or a form service (e.g. Formspree, Netlify Forms).

## Images

Images are stored in `images/` and were pulled from [caroghana.org](https://caroghana.org/):

- `logo.jpg` – CaroGhana logo (header and footer)
- `hero.jpg` – Hero section background
- `cause-community.jpg`, `cause-wash.jpg`, `cause-agriculture.jpg` – Cause cards
- `testimonial-person.jpg` – Testimonial avatar (Roseline Dery)
- `testimonial-bg.jpg` – Testimonials section background

Partner logos (SDG, CONIWAS, etc.) can be downloaded by running:

```bash
./scripts/download-partner-images.sh
```

If any download fails (e.g. network restrictions), run the script from your machine where caroghana.org is reachable; the site already references `images/partner-sdg.jpeg`, `images/partner-coniwas.png`, and `images/partner-8471809.jpeg`.

## Customize

- **CSS:** Edit `css/variables.css` for colors and spacing; other files in `css/` for layout and components.
- **Content:** Edit the HTML files directly. Replace “Partner logo” placeholders with real sponsor logos when ready.
- **Publications:** Add full article pages and point the publication links to them.

© 2024 CaroGhana. All rights reserved.
