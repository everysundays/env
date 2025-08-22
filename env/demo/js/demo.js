/**
 * Demo Interactive Features
 * Combined JavaScript functionality for PSP demo pages
 */

// ================================
// BADGE HIGHLIGHTING SYSTEM
// ================================

function highlightTags(componentElement, tagIds) {
  // Remove all existing highlights and restore ghost state
  document.querySelectorAll('.badge').forEach(badge => {
    badge.classList.remove('badge-warning');
    if (!badge.classList.contains('badge-ghost')) {
      badge.classList.add('badge-ghost');
    }
  });

  // Highlight relevant tags
  if (tagIds && tagIds.length > 0) {
    tagIds.forEach(tagId => {
      const tag = document.getElementById(tagId);
      if (tag) {
        tag.classList.remove('badge-ghost');
        tag.classList.add('badge-warning');
      }
    });
  }
}

function clearHighlights() {
  document.querySelectorAll('.badge').forEach(badge => {
    badge.classList.remove('badge-warning');
    // Restore original badge colors - all use badge-ghost for subtle appearance
    if (!badge.classList.contains('badge-ghost')) {
      badge.classList.add('badge-ghost');
    }
  });
}

// ================================
// THEME SWITCHER SYSTEM
// ================================

function initThemeSwitcher() {
  const themeToggle = document.getElementById('theme-toggle');
  const sunIcon = document.querySelector('.sun-icon');
  const moonIcon = document.querySelector('.moon-icon');
  
  if (!themeToggle) return; // Exit if theme toggle not found
  
  // Get saved theme or default to light
  const currentTheme = localStorage.getItem('theme') || 'light';
  
  // Apply theme on load
  setTheme(currentTheme);
  
  // Toggle theme on button click (cycle: light → dark → light)
  themeToggle.addEventListener('click', function() {
    const current = document.documentElement.getAttribute('data-theme');
    let newTheme;
    if (current === 'light') {
      newTheme = 'dark';
    } else {
      newTheme = 'light';
    }
    setTheme(newTheme);
    localStorage.setItem('theme', newTheme);
  });
  
  function setTheme(theme) {
    document.documentElement.setAttribute('data-theme', theme);
    
    if (theme === 'dark') {
      if (sunIcon) sunIcon.classList.add('hidden');
      if (moonIcon) moonIcon.classList.remove('hidden');
    } else {
      if (moonIcon) moonIcon.classList.add('hidden');
      if (sunIcon) sunIcon.classList.remove('hidden');
    }
  }
}

// ================================
// INITIALIZATION
// ================================

document.addEventListener('DOMContentLoaded', function() {
  // Initialize theme switcher
  initThemeSwitcher();
  
  // Initialize badge highlighting system
  const highlightElements = document.querySelectorAll('[data-highlight-tags]');
  highlightElements.forEach(element => {
    element.addEventListener('mouseenter', function() {
      const tagIds = this.getAttribute('data-highlight-tags').split(',').map(s => s.trim()).filter(s => s);
      highlightTags(this, tagIds);
    });

    element.addEventListener('mouseleave', function() {
      clearHighlights();
    });
  });
});