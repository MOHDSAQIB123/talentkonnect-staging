import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()],
  server: {
    host: true
  },
  esbuild: {
    loader: 'jsx',
    include: /modules\/.*\.js$/, // treat .js files under /modules as JSX
    exclude: []
  }
});
