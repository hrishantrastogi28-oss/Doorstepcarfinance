# Doorstepcarloan website

Responsive, single-page site using plain HTML, CSS and JavaScript.

## Connect the enquiry form to Supabase

1. Create a Supabase project named `doorstepcarloan` (Free plan is enough for the starter site).
2. In its **SQL Editor**, run `supabase-setup.sql`. This creates `public.car_loan_enquiries` with row-level security enabled. Public visitors can insert enquiries but cannot read them.
3. In **Project Settings → API**, copy the Project URL and the publishable key. Do not use a secret or service-role key in the website.
4. In `index.html`, set `url` and `publishableKey` in the `SUPABASE` object near the bottom of the file. These are the only website connection values to edit.
5. Submit a test enquiry on the published site, then check **Table Editor → car_loan_enquiries** in Supabase.

## Publish free on Netlify

1. Sign in to Netlify and choose **Add new site → Deploy manually**.
2. Drag the complete `doorstep-car-finance-site` folder into the upload area. Netlify hosts the static website; Supabase stores form submissions.
3. Add a domain you own under **Domain management → Add a domain**, then follow Netlify's DNS steps.

## Edit business details

- Edit the SITE object near the bottom of index.html for both phone numbers, WhatsApp numbers, business email and hours. WhatsApp numbers use country code without a plus sign.
- The official business email is listed in privacy.html and terms.html.
- Replace the marked hero image URL and its alt text with your compressed car or team photo.
- Replace the illustrative customer journeys with real customer reviews only with permission.
- Add confirmed lending partner bank names, official social profile links and your Google review URL when available.
- The car logo and favicon are included in the page. Analytics insertion point and click tracking hooks are marked in index.html.
- The enquiry form stores enquiries in Supabase. The current setup does not email submissions; review the Supabase table or add an email notification separately.

Files: index.html, thank-you.html, privacy.html, terms.html, supabase-setup.sql.
