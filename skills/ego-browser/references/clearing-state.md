# Clearing browser state safely

A task Space can share a browser profile with the user's own tabs. Scope cleanup to one origin whenever possible.

## Preferred scope

Reload without cache:

```js
await page.cdp("Page.reload", { ignoreCache: true });
```

Clear one site's data:

```js
await page.cdp("Storage.clearDataForOrigin", {
  origin: new URL(await page.url()).origin,
  storageTypes: "cookies",
});
```

Delete a specific cookie:

```js
const { cookies } = await page.cdp("Network.getAllCookies");
for (const cookie of cookies.filter((item) => item.domain.includes("example.com"))) {
  await page.cdp("Network.deleteCookies", {
    name: cookie.name,
    domain: cookie.domain,
    path: cookie.path,
  });
}
```

Avoid profile-wide operations such as `Network.clearBrowserCookies`, `Network.clearBrowserCache`, or `Storage.clearCookies` without a `browserContextId`. They can sign the user out of every site on that profile and cannot be undone. Run them only after the user has approved that exact impact.
