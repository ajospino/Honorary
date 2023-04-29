const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: 'http://localhost:3000',
    projectId: "ygdq5c",
    supportFile: 'cypress/support/e2e.js',
    requestTimeout: 60000,
    defaultCommandTimeout: 60000,
    responseTimeout: 60000,
    video: false,
    watchForFileChanges: false,
  },
});
