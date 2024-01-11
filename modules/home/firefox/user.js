/* name: arkenfox user.js */

/* 0000: disable about:config warning ***/
 user_pref("browser.aboutConfig.showWarning", false);
 
 /*** [SECTION 0100]: STARTUP ***/
 user_pref("_user.js.parrot", "0100 syntax error: the parrot's dead!");
 user_pref("browser.startup.page", 0);
 user_pref("browser.startup.homepage", "about:blank");
 user_pref("browser.newtabpage.enabled", false);
 user_pref("browser.newtabpage.activity-stream.showSponsored", false); // [FF58+] Pocket > Sponsored Stories
 user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false); // [FF83+] Sponsored shortcuts
 user_pref("browser.newtabpage.activity-stream.default.sites", "");
 
 /*** [SECTION 0200]: GEOLOCATION / LANGUAGE / LOCALE ***/
 user_pref("_user.js.parrot", "0200 syntax error: the parrot's definitely deceased!");
 user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
 user_pref("geo.provider.ms-windows-location", false); // [WINDOWS]
 user_pref("geo.provider.use_corelocation", false); // [MAC]
 user_pref("geo.provider.use_gpsd", false); // [LINUX]
 user_pref("geo.provider.use_geoclue", false); // [FF102+] [LINUX]
 user_pref("intl.accept_languages", "en-US, en");
 user_pref("javascript.use_us_english_locale", true); // [HIDDEN PREF]
 
 /*** [SECTION 0300]: QUIETER FOX ***/
 user_pref("_user.js.parrot", "0300 syntax error: the parrot's not pinin' for the fjords!");
 user_pref("extensions.getAddons.showPane", false); // [HIDDEN PREF]
 user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
 user_pref("browser.discovery.enabled", false);
 
 /** TELEMETRY ***/
 user_pref("datareporting.policy.dataSubmissionEnabled", false);
 user_pref("datareporting.healthreport.uploadEnabled", false);
 user_pref("toolkit.telemetry.unified", false);
 user_pref("toolkit.telemetry.enabled", false); // see [NOTE]
 user_pref("toolkit.telemetry.server", "data:,");
 user_pref("toolkit.telemetry.archive.enabled", false);
 user_pref("toolkit.telemetry.newProfilePing.enabled", false); // [FF55+]
 user_pref("toolkit.telemetry.shutdownPingSender.enabled", false); // [FF55+]
 user_pref("toolkit.telemetry.updatePing.enabled", false); // [FF56+]
 user_pref("toolkit.telemetry.bhrPing.enabled", false); // [FF57+] Background Hang Reporter
 user_pref("toolkit.telemetry.firstShutdownPing.enabled", false); // [FF57+]
 user_pref("toolkit.telemetry.coverage.opt-out", true); // [HIDDEN PREF]
 user_pref("toolkit.coverage.opt-out", true); // [FF64+] [HIDDEN PREF]
 user_pref("toolkit.coverage.endpoint.base", "");
 user_pref("browser.ping-centre.telemetry", false);
 user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
 user_pref("browser.newtabpage.activity-stream.telemetry", false);
 
 /** STUDIES ***/
 user_pref("app.shield.optoutstudies.enabled", false);
 user_pref("app.normandy.enabled", false);
 user_pref("app.normandy.api_url", "");
 
 /** CRASH REPORTS ***/
 user_pref("breakpad.reportURL", "");
 user_pref("browser.tabs.crashReporting.sendReport", false); // [FF44+]
 user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false); // [DEFAULT: false]
 
 /** OTHER ***/
 user_pref("captivedetect.canonicalURL", "");
 user_pref("network.captive-portal-service.enabled", false); // [FF52+]
 user_pref("network.connectivity-service.enabled", false);
 
 /*** [SECTION 0400]: SAFE BROWSING (SB) ***/
 user_pref("_user.js.parrot", "0400 syntax error: the parrot's passed on!");
 user_pref("browser.safebrowsing.downloads.remote.enabled", false);
 
 /*** [SECTION 0600]: BLOCK IMPLICIT OUTBOUND [not explicitly asked for - e.g. clicked on] ***/
 user_pref("_user.js.parrot", "0600 syntax error: the parrot's no more!");
 user_pref("network.prefetch-next", false);
 user_pref("network.dns.disablePrefetch", true);
 user_pref("network.predictor.enabled", false);
 user_pref("network.predictor.enable-prefetch", false); // [FF48+] [DEFAULT: false]
 user_pref("network.http.speculative-parallel-limit", 0);
 user_pref("browser.places.speculativeConnect.enabled", false);
 
 /*** [SECTION 0700]: DNS / DoH / PROXY / SOCKS ***/
 user_pref("_user.js.parrot", "0700 syntax error: the parrot's given up the ghost!");
 user_pref("network.proxy.socks_remote_dns", true);
 user_pref("network.file.disable_unc_paths", true); // [HIDDEN PREF]
 user_pref("network.gio.supported-protocols", ""); // [HIDDEN PREF]
 user_pref("network.dns.skipTRR-when-parental-control-enabled", false);
 
 /*** [SECTION 0800]: LOCATION BAR / SEARCH BAR / SUGGESTIONS / HISTORY / FORMS ***/
 user_pref("_user.js.parrot", "0800 syntax error: the parrot's ceased to be!");
 user_pref("browser.fixup.alternate.enabled", false); // [DEFAULT: false FF104+]
 user_pref("browser.search.suggest.enabled", false);
 user_pref("browser.urlbar.suggest.searches", false);
 user_pref("browser.urlbar.speculativeConnect.enabled", false);
 user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0); // [DEFAULT: 0 FF104+]
 user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false); // [FF95+]
 user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
 user_pref("browser.formfill.enable", false);
 
 /*** [SECTION 0900]: PASSWORDS [1] https://support.mozilla.org/kb/use-primary-password-protect-stored-logins-and-pas***/
 user_pref("_user.js.parrot", "0900 syntax error: the parrot's expired!");
 user_pref("signon.autofillForms", false);
 user_pref("signon.formlessCapture.enabled", false);
 user_pref("network.auth.subresource-http-auth-allow", 1);
 
 /*** [SECTION 1000]: DISK AVOIDANCE ***/
 user_pref("_user.js.parrot", "1000 syntax error: the parrot's gone to meet 'is maker!");
 user_pref("browser.cache.disk.enable", false);
 user_pref("browser.privatebrowsing.forceMediaMemoryCache", true); // [FF75+]
 user_pref("media.memory_cache_max_size", 65536);
 user_pref("browser.sessionstore.privacy_level", 2);
 user_pref("toolkit.winRegisterApplicationRestart", false);
 user_pref("browser.shell.shortcutFavicons", false);
 
 /*** [SECTION 1200]: HTTPS (SSL/TLS / OCSP / CERTS / HPKP) ***/
 user_pref("_user.js.parrot", "1200 syntax error: the parrot's a stiff!");
 user_pref("security.ssl.require_safe_negotiation", true);
 user_pref("security.tls.enable_0rtt_data", false);
 user_pref("security.OCSP.enabled", 1); // [DEFAULT: 1]
 user_pref("security.OCSP.require", true);
 user_pref("security.cert_pinning.enforcement_level", 2);
 user_pref("security.remote_settings.crlite_filters.enabled", true);
 user_pref("security.pki.crlite_mode", 2);
 
 /** MIXED CONTENT ***/
 user_pref("dom.security.https_only_mode", true); // [FF76+]
 user_pref("dom.security.https_only_mode_send_http_background_request", false);
 
 /** UI (User Interface) ***/
 user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
 user_pref("browser.xul.error_pages.expert_bad_cert", true);
 
 /*** [SECTION 1400]: FONTS ***/
 user_pref("_user.js.parrot", "1400 syntax error: the parrot's bereft of life!");
 
 /*** [SECTION 1600]: REFERERS ***/
 user_pref("_user.js.parrot", "1600 syntax error: the parrot rests in peace!");
 user_pref("network.http.referer.XOriginTrimmingPolicy", 2);
 
 /*** [SECTION 1700]: CONTAINERS ***/
 user_pref("_user.js.parrot", "1700 syntax error: the parrot's bit the dust!");
 user_pref("privacy.userContext.enabled", true);
 user_pref("privacy.userContext.ui.enabled", true);
 
 /*** [SECTION 2000]: PLUGINS / MEDIA / WEBRTC ***/
 user_pref("_user.js.parrot", "2000 syntax error: the parrot's snuffed it!");
 user_pref("media.peerconnection.ice.proxy_only_if_behind_proxy", true);
 user_pref("media.peerconnection.ice.default_address_only", true);
 
 /*** [SECTION 2400]: DOM (DOCUMENT OBJECT MODEL) ***/
 user_pref("_user.js.parrot", "2400 syntax error: the parrot's kicked the bucket!");
 user_pref("dom.disable_window_move_resize", true);
 
 /*** [SECTION 2600]: MISCELLANEOUS ***/
 user_pref("_user.js.parrot", "2600 syntax error: the parrot's run down the curtain!");
 user_pref("accessibility.force_disabled", 1);
 user_pref("browser.helperApps.deleteTempFileOnExit", true);
 user_pref("browser.uitour.enabled", false);
 user_pref("devtools.debugger.remote-enabled", false); // [DEFAULT: false]
 user_pref("permissions.manager.defaultsUrl", "");
 user_pref("webchannel.allowObject.urlWhitelist", "");
 user_pref("network.IDN_show_punycode", true);
 user_pref("pdfjs.disabled", false); // [DEFAULT: false]
 user_pref("pdfjs.enableScripting", false); // [FF86+]
 user_pref("permissions.delegation.enabled", false);
 user_pref("browser.tabs.searchclipboardfor.middleclick", false); // [DEFAULT: false NON-LINUX]
 
 /** DOWNLOADS ***/
 user_pref("browser.download.useDownloadDir", false);
 user_pref("browser.download.alwaysOpenPanel", false);
 user_pref("browser.download.manager.addToRecentDocs", false);
 user_pref("browser.download.always_ask_before_handling_new_types", true);
 
 /** EXTENSIONS ***/
 user_pref("extensions.enabledScopes", 5); // [HIDDEN PREF]
 user_pref("extensions.autoDisableScopes", 15); // [DEFAULT: 15]
 user_pref("extensions.postDownloadThirdPartyPrompt", false);
 
 /*** [SECTION 2700]: ETP (ENHANCED TRACKING PROTECTION) ***/
 user_pref("_user.js.parrot", "2700 syntax error: the parrot's joined the bleedin' choir invisible!");
 user_pref("browser.contentblocking.category", "strict");
 user_pref("privacy.partition.serviceWorkers", true); // [DEFAULT: true FF105+]
 user_pref("privacy.partition.always_partition_third_party_non_cookie_storage", true); // [FF104+] [DEFAULT: true FF109+]
 user_pref("privacy.partition.always_partition_third_party_non_cookie_storage.exempt_sessionstorage", false); // [FF105+] [DEFAULT: false FF109+]
 
 /*** [SECTION 2800]: SHUTDOWN & SANITIZING ***/
 user_pref("_user.js.parrot", "2800 syntax error: the parrot's bleedin' demised!");
 user_pref("privacy.sanitize.sanitizeOnShutdown", true);
 user_pref("privacy.clearOnShutdown.cache", true);     // [DEFAULT: true]
 user_pref("privacy.clearOnShutdown.downloads", true); // [DEFAULT: true]
 user_pref("privacy.clearOnShutdown.formdata", true);  // [DEFAULT: true]
 user_pref("privacy.clearOnShutdown.history", true);   // [DEFAULT: true]
 user_pref("privacy.clearOnShutdown.sessions", true);  // [DEFAULT: true]
 user_pref("privacy.clearOnShutdown.cookies", true); // Cookies
 user_pref("privacy.clearOnShutdown.offlineApps", true); // Site Data
 user_pref("privacy.cpd.cache", true);    // [DEFAULT: true]
 user_pref("privacy.cpd.formdata", true); // [DEFAULT: true]
 user_pref("privacy.cpd.history", true);  // [DEFAULT: true]
 user_pref("privacy.cpd.sessions", true); // [DEFAULT: true]
 user_pref("privacy.cpd.offlineApps", false); // [DEFAULT: false]
 user_pref("privacy.cpd.cookies", false);
 user_pref("privacy.sanitize.timeSpan", 0);
 
 /*** [SECTION 4500]: RFP (RESIST FINGERPRINTING) ***/
 user_pref("_user.js.parrot", "4500 syntax error: the parrot's popped 'is clogs");
 user_pref("privacy.resistFingerprinting", true); // [FF41+]
 user_pref("privacy.window.maxInnerWidth", 1600);
 user_pref("privacy.window.maxInnerHeight", 900);
 user_pref("privacy.resistFingerprinting.block_mozAddonManager", true); // [HIDDEN PREF FF57-108]
 user_pref("privacy.resistFingerprinting.letterboxing", true); // [HIDDEN PREF]
 user_pref("browser.display.use_system_colors", false); // [DEFAULT: false NON-WINDOWS]
 user_pref("widget.non-native-theme.enabled", true); // [DEFAULT: true]
 user_pref("browser.link.open_newwindow", 3); // [DEFAULT: 3]
 user_pref("browser.link.open_newwindow.restriction", 0);
 user_pref("webgl.disabled", true);
 
 /*** [SECTION 5000]: OPTIONAL OPSEC Disk avoidance, application data isolation, eyeballs... ***/
 user_pref("_user.js.parrot", "5000 syntax error: the parrot's taken 'is last bow");
 user_pref("_user.js.parrot", "5500 syntax error: this is an ex-parrot!");
 user_pref("_user.js.parrot", "6000 syntax error: the parrot's 'istory!");
 user_pref("extensions.blocklist.enabled", true); // [DEFAULT: true]
 user_pref("network.http.referer.spoofSource", false); // [DEFAULT: false]
 user_pref("security.dialog_enable_delay", 1000); // [DEFAULT: 1000]
 user_pref("privacy.firstparty.isolate", false); // [DEFAULT: false]
 user_pref("extensions.webcompat.enable_shims", true); // [DEFAULT: true]
 user_pref("security.tls.version.enable-deprecated", false); // [DEFAULT: false]
 user_pref("extensions.webcompat-reporter.enabled", false); // [DEFAULT: false]
 user_pref("extensions.quarantinedDomains.enabled", true); // [DEFAULT: true]
 
 /*** [SECTION 7000]: DON'T BOTHER ***/
 user_pref("_user.js.parrot", "7000 syntax error: the parrot's pushing up daisies!");
 user_pref("_user.js.parrot", "8000 syntax error: the parrot's crossed the Jordan");
 
 /*** [SECTION 9000]: NON-PROJECT RELATED ***/
 user_pref("_user.js.parrot", "9000 syntax error: the parrot's cashed in 'is chips!");
 user_pref("browser.startup.homepage_override.mstone", "ignore");
 user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
 user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
 user_pref("browser.messaging-system.whatsNewPanel.enabled", false);
 user_pref("browser.urlbar.showSearchTerms.enabled", false);
 
 user_pref("_user.js.parrot", "9999 syntax error: the parrot's shuffled off 'is mortal coil!");
 user_pref("network.cookie.lifetimePolicy", 2);
 
 /* END: internal custom pref to test for syntax errors ***/
 user_pref("_user.js.parrot", "SUCCESS: No no he's not dead, he's, he's restin'!");

/* user-overrides.js */
 /* user-overrides.js */
 user_pref("browser.ctrlTab.sortByRecentlyUsed", true);
 //user_pref("privacy.sanitize.sanitizeOnShutdown", false);
 user_pref("privacy.clearOnShutdown.history", false); 
 user_pref("privacy.cpd.history", false);
 
 user_pref("privacy.resistFingerprinting.letterboxing", false);
 
 /* [SECURITY] Disable saving passwords. */
 user_pref("signon.rememberSignons", false);
 
 /* [UX,-HIST] Remember more closed tabs for undo. */
 user_pref("browser.sessionstore.max_tabs_undo", 15);
 user_pref("privacy.resistFingerprinting", false);