#!/usr/bin/env bash
# Static checks for accessibility patterns in shared Liquid includes.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "check-a11y-includes: $1" >&2
  exit 1
}

if rg -q 'h3 class="ctdc-cta-band__path-title"' _includes/components/closing-cta.html; then
  fail 'closing-cta.html must use styled <p> for path titles, not <h3>.'
fi

if rg -q 'h3 class="ctdc-footer__heading"' _includes/core/footer.html; then
  fail 'footer.html section headings must be <h2 class="ctdc-footer__heading">.'
fi

if ! rg -q 'title="Civic Tech DC upcoming events calendar"' _includes/components/meetup-events.html; then
  fail 'meetup-events.html iframe must include a descriptive title attribute.'
fi

for file in _includes/components/supporters.html _includes/components/community-partners.html; do
  if rg 'alt="[^"]+"' "$file" >/dev/null 2>&1; then
    fail "$file must not use non-empty img alt inside aria-label logo links."
  fi
done

echo 'check-a11y-includes: OK'
