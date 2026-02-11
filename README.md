## Write Up Román Forns – Marzo 2026

Este repositorio está preparado para publicarse en **GitHub Pages**.

### Estructura

- `Write Up Román Forns Marzo 2026.md`: documento original.
- `index.md`: página principal que GitHub Pages mostrará en `https://<tu-usuario>.github.io/<nombre-del-repo>/`.

Puedes copiar el contenido del documento original dentro de `index.md` si quieres que la página principal muestre exactamente el mismo texto.

### Cómo publicarlo en GitHub Pages

1. Crea un repositorio en GitHub con el mismo nombre que esta carpeta (o el que prefieras).
2. Desde esta carpeta, ejecuta en tu terminal:

   ```bash
   git add .
   git commit -m "Inicializa repositorio para GitHub Pages"
   git branch -M main
   git remote add origin git@github.com:<tu-usuario>/<nombre-del-repo>.git
   git push -u origin main
   ```

3. En GitHub, ve a:
   - `Settings` → sección **Pages**
   - En **Source**, elige la rama `main` y la carpeta `/ (root)` y guarda.

4. GitHub generará la página. En unos minutos tendrás disponible la URL pública:
   - `https://<tu-usuario>.github.io/<nombre-del-repo>/`

