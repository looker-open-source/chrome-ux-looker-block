# Chrome UX Report (CrUX) Looker Block

**This is not an officially supported Google product.**

## What does this Looker Block do for me?

This block allows users to easily analyze and visualize Chrome UX Report (CrUX) data directly within Looker. CrUX provides aggregated, real-user experience data for thousands of websites, enabling you to understand and improve the performance of your online properties.

To facilitate your analysis of key web performance metrics and their evolution over time, this block creates:

* Dynamic Analysis Capabilities: Enables dynamic selection and visualization of Core Web Vitals (LCP, INP, CLS) and other important web performance metrics.
* Simplified Historical Context: Allows for direct metric comparisons with previous periods (e.g., previous month) using Looker's efficient native period_over_period capabilities.
* Segmentation: Enables performance analysis by origin (domain) and device (device type).

CrUX data is exported as a set of public tables in BigQuery. This block optimizes the access and visualization of this complex information.

Official documentation on how to access CrUX data in BigQuery can be found on the Google Developers support site [here](https://developer.chrome.com/docs/crux/bigquery).

### CrUX Data Structure & Metrics

The Chrome UX Report (CrUX) is a public dataset that expresses real-user experience on thousands of websites. The data is anonymized, aggregated at the `origin` (website domain) level, and by month (`yyyymm`).

Each row in the CrUX tables represents a monthly summary of user experience for a specific origin and device combination (e.g., 'desktop', 'phone', 'tablet').

The main categories of metrics you will find are:

* Core Web Vitals: A set of metrics focused on page loading performance, interactivity, and visual stability.
  * Largest Contentful Paint (LCP): Measures loading performance.
  * Interaction to Next Paint (INP): Measures responsiveness (interactivity).
  * Cumulative Layout Shift (CLS): Measures visual stability.
* Other Web Performance Metrics:
  * First Contentful Paint (FCP): Measures the time until the browser renders the first bit of DOM content.
  * First Input Delay (FID): Measures the responsiveness to the first user interaction. (Note: INP is the successor to FID).
  * First Paint (FP): Measures the time until the first pixel appears.
  * Onload (OL): Measures the time until the page is fully loaded.
  * Time to First Byte (TTFB): Measures the time it takes for the network to respond to a navigation request.

* Distribution Metrics: A set of metrics that provide context about the user's environment and how they interact with the site.

  * Device Distribution: Breaks down user traffic by the type of device.
    * Desktop: Experiences on a desktop or laptop computer.
    * Phone: Experiences on a mobile phone.
    * Tablet: Experiences on a tablet device.
  * Effective Connection Type: Categorizes user experiences based on the effective network connection speed during their visit.
    * 4G: Represents fast connections, equivalent to 4G speeds or better.
    * 3G: Represents connections with average speed.
    * 2G: Represents slow connections.
    * Slow 2G: Represents very slow connections, often resulting in poor performance.
    * Offline: Represents experiences where the user had no network connection.
  * Navigation Type: Details how users arrived at a page, which can significantly impact performance metrics.
    * Navigate: A standard navigation, such as clicking a link, using a bookmark, or typing a URL in the address bar.
    * Back/Forward: Navigation using the browser's back or forward buttons. Many of these are served instantly from the browser's back/forward cache (bfcache), resulting in extremely fast load times.
    * Reload: The user reloaded the page.
    * Prerender: The page was loaded in the background before the user navigated to it, providing a near-instant experience.
    * Restore: The page was restored from a previous session, for example, when reopening the browser.
  * Notification Permissions: Tracks how users interact with web push notification permission prompts.
    * Accepted: The user clicked "Allow" on the permission prompt.
    * Denied: The user explicitly clicked "Block."
    * Dismissed: The user closed the prompt without making a choice (e.g., clicked the 'X').
    * Ignored: The user did not interact with the prompt, and it was automatically dismissed due to another action or timeout.

For each of these metrics, CrUX data provides density histograms which are translated into three main categories:

* Good (%): The percentage of user experiences that fall within the "Good" range.
* Needs Improvement (%): The percentage of experiences that need improvement.
* Poor (%): The percentage of experiences considered "Poor". Additionally, the P75 (75th Percentile) is provided, which is the metric value at which 75% of user experiences are better than or equal to it.

### Datasets Used

This Looker block utilizes the following public Google BigQuery dataset:

* `chrome-ux-report.materialized.device_summary`: This table/view in BigQuery contains the aggregated CrUX data by origin, device, and yyyymm (year-month), providing the foundation for web performance metrics.

The documentation for CrUX data in BigQuery can be found [here](https://developer.chrome.com/docs/crux/bigquery).

For a deeper understanding of Core Web Vitals metrics, visit [web.dev/vitals.](https://web.dev/vitals/)

## Key LookML Features

The LookML for this project has been designed to provide a flexible and powerful analytics experience:

* Dynamic Metric Selection: The core of this block's flexibility is the parameter: dynamic_metric. This parameter allows users to select the web performance metric they wish to analyze (LCP, INP, CLS, FCP, etc.). All related measures ('Good', 'Needs Improvement', 'Poor' percentages, and P75) will automatically adapt to display data for the selected metric, minimizing the need for multiple static columns.
* Previous Period Comparison (period_over_period): Leveraging a new Looker feature (available in versions 25.8 and above), this block utilizes period_over_period measure types. This enables the straightforward and efficient calculation of previous period values (e.g., previous month) for any selected metric, facilitating trend analysis and comparisons directly within your Explores and Dashboards.

### Looker Model and Views

The file structure of this block is organized to facilitate navigation and extensibility.

* `device_summary.view`: This is the primary base view where most CrUX dimensions and measures are defined. The `parameter: dynamic_metric` and the `period_over_period` measure definitions are also located here.
