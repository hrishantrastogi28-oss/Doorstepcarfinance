# Doorstepcarloan website

Responsive, single-page site using plain HTML, CSS and JavaScript.

## Connect the enquiry form to Supabase

1. The site is connected to the Supabase project named `doorstepcarfinance`.
2. In its **SQL Editor**, run `supabase-setup.sql`. This creates `public.car_loan_enquiries` with row-level security enabled. Public visitors can insert enquiries but cannot read them.
3. In **Project Settings → API**, copy the Project URL and the publishable key. Do not use a secret or service-role key in the website.
4. The public project URL and publishable key are configured in the `SUPABASE` object near the bottom of `index.html`. Never put a secret or service-role key in the website.
5. Form submissions are saved in **Table Editor → car_loan_enquiries** in Supabase. The table uses row-level security: public visitors can submit but cannot read enquiries.

## Publish free on Netlify

1. Sign in to Netlify and choose **Add new site → Deploy manually**.
2. Drag the complete `doorstep-car-finance-site` folder into the upload area. Netlify hosts the static website; Supabase stores form submissions.
3. Add a domain you own under **Domain management → Add a domain**, then follow Netlify's DNS steps.

## Edit business details

- Edit the SITE object near the bottom of index.html to change the main call number, WhatsApp number, business email and hours. The secondary contact number is kept in the footer.
- The official business email is listed in privacy.html and terms.html.
- Customer vehicle and office photos are stored in the `assets` folder and used on the homepage. Replace these with other images only when you have permission to publish them.
- The portfolio uses the supplied customer vehicle and office photos. Publish customer reviews only with their permission.
- Add confirmed lending partner bank names, official social profile links and your Google review URL when available.
- The car logo and favicon are included in the page. Analytics insertion point and click tracking hooks are marked in index.html.
- The enquiry form stores enquiries in Supabase. The current setup does not email submissions; review the Supabase table or add an email notification separately.

Files: index.html, assets/, thank-you.html, privacy.html, terms.html, supabase-setup.sql.
