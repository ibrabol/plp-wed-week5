:root {
    --brand-color: #2563eb;
    --accent-color: #14b8a6;
    --surface-color: #ffffff;
    --background-color: #f1f5f9;
    --primary-text: #0f172a;
    --secondary-text: #64748b;
    --border-color: #e2e8f0;
}

/* Basic reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: var(--background-color);
    color: var(--primary-text);
}

/* Overall page layout - CSS Grid */
.dashboard {
    min-height: 100vh;
    display: grid;
    grid-template-columns: 240px 1fr;
}

/* Sidebar */
.sidebar {
    background: var(--surface-color);
    border-right: 1px solid var(--border-color);
    padding: 24px;
    display: flex;
    flex-direction: column;
}

.logo h2 {
    color: var(--brand-color);
    margin-bottom: 35px;
}

.sidebar-nav {
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.sidebar-nav a {
    text-decoration: none;
    color: var(--secondary-text);
    padding: 12px;
    border-radius: 8px;
    transition: 0.2s ease;
}

.sidebar-nav a:hover,
.sidebar-nav a.active {
    background: var(--brand-color);
    color: white;
}

.sidebar-footer {
    margin-top: auto;
    color: var(--secondary-text);
    font-size: 13px;
}

/* Main content */
.main-content {
    min-width: 0;
}

/* Header - Flexbox */
.header {
    background: var(--surface-color);
    padding: 24px 32px;
    border-bottom: 1px solid var(--border-color);

    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
}

.header-title p {
    color: var(--secondary-text);
    margin-bottom: 5px;
}

.header-title h1 {
    font-size: 28px;
}

.profile {
    display: flex;
    align-items: center;
    gap: 15px;
}

.notification {
    font-size: 22px;
}

.user-info {
    display: flex;
    flex-direction: column;
}

.user-info span {
    color: var(--secondary-text);
    font-size: 13px;
}

/* Dashboard content */
.dashboard-content {
    padding: 32px;
}

/* Summary cards */
.summary {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    margin-bottom: 35px;
}

.summary > div {
    background: var(--surface-color);
    padding: 22px;
    border-radius: 12px;
    border: 1px solid var(--border-color);
}

.summary p {
    color: var(--secondary-text);
    margin-bottom: 8px;
}

.summary h2 {
    color: var(--brand-color);
}

/* Section heading */
.section-heading {
    margin-bottom: 20px;
}

.section-heading h2 {
    margin-bottom: 5px;
}

.section-heading p {
    color: var(--secondary-text);
}

/* Category cards - CSS Grid */
.category-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

/* Individual card - Flexbox */
.category-card {
    background: var(--surface-color);
    border: 1px solid var(--border-color);
    border-radius: 12px;
    padding: 22px;

    display: flex;
    flex-direction: column;
    gap: 18px;

    transition:
        transform 200ms ease,
        box-shadow 200ms ease;
}

/* Card hover micro-interaction */
.category-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 8px 20px rgba(15, 23, 42, 0.12);
}

/* Keyboard focus */
.category-card:focus,
.category-card:focus-visible {
    outline: 3px solid var(--accent-color);
    outline-offset: 3px;
    transform: translateY(-4px);
    box-shadow: 0 8px 20px rgba(15, 23, 42, 0.12);
}

.card-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.category-icon {
    font-size: 30px;
}

.percentage {
    color: var(--accent-color);
    font-weight: bold;
}

.card-content {
    display: flex;
    flex-direction: column;
    gap: 8px;
}

.card-content p {
    color: var(--secondary-text);
    font-size: 14px;
}

.card-content strong {
    font-size: 22px;
    color: var(--primary-text);
}

/* Responsive layout */
@media (max-width: 767px) {

    .dashboard {
        grid-template-columns: 1fr;
    }

    .sidebar {
        border-right: none;
        border-bottom: 1px solid var(--border-color);
    }

    .sidebar-nav {
        flex-direction: row;
        flex-wrap: wrap;
    }

    .sidebar-footer {
        margin-top: 20px;
    }

    .header {
        flex-direction: column;
        align-items: flex-start;
    }

    .summary {
        grid-template-columns: 1fr;
    }

    .category-grid {
        grid-template-columns: 1fr;
    }

    .dashboard-content {
        padding: 20px;
    }
}

/* Stretch goal: Dark theme */
@media (prefers-color-scheme: dark) {
    :root {
        --brand-color: #60a5fa;
        --accent-color: #2dd4bf;
        --surface-color: #1e293b;
        --background-color: #0f172a;
        --primary-text: #f8fafc;
        --secondary-text: #94a3b8;
        --border-color: #334155;
    }
}