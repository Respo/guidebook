import {defineConfig} from 'vite';

// Caps links exact published sources outside the app; resolve their CSS npm
// imports through this consumer, without modifying the shared module cache.
export default defineConfig({resolve: {preserveSymlinks: true}});
