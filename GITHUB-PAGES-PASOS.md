# Pasos para publicar en GitHub Pages

## Situación actual (actualizado)
- El sitio ya está en la **raíz** del proyecto: `index.html`, `css/`, `js/`, `images/`, `fonts/`.
- GitHub Pages sirve desde la raíz del repo; con esta estructura la URL será **https://romanforns.github.io/Write-Up-2026/**.

---

## Opción A: Publicar desde la raíz (recomendada)

### 1. Mover el contenido a la raíz
Mueve todo lo que está dentro de `CVromanforns-main/` a la raíz del proyecto (misma altura que README.md), para que en la raíz queden:
- `index.html`
- `writeup.html`
- `css/`
- `js/`
- `images/`
- `fonts/`
- `CNAME` (si usas dominio propio)
- etc.

Así la URL será: **https://tu-usuario.github.io/Write-Up-2026/** y **https://tu-usuario.github.io/Write-Up-2026/writeup.html**.

### 2. Subir el repositorio a GitHub
Si aún no tienes el repo en GitHub:

```bash
# Crear el repositorio en GitHub (desde github.com: New repository, nombre ej. "Write-Up-2026")

# En tu carpeta del proyecto:
cd "c:\Users\roman.forns\Desktop\Write Up 2026"
git add .
git commit -m "Sitio listo para GitHub Pages"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/Write-Up-2026.git
git push -u origin main
```

Sustituye `TU-USUARIO` por tu usuario de GitHub.

### 3. Activar GitHub Pages (qué verás en la pantalla)
1. En GitHub: abre **https://github.com/Romanforns/Write-Up-2026**
2. Pestaña **Settings** (arriba, junto a Insights).
3. En el **menú izquierdo**, busca **Pages** (suele estar dentro de **"Code and automation"**). Si no lo ves, baja un poco en el menú.
4. En la sección **"Build and deployment"** verás:
   - **Source**: desplegable → elige **"Deploy from a branch"**.
   - **Branch**: elige **main** y en **Folder** → **/ (root)**.
   - Botón **Save**.
5. Si la página de Settings → Pages está en blanco o no ves "Build and deployment", asegúrate de que el repo tiene al menos un commit con el contenido (incluido `index.html` en la raíz) y que estás como propietario o con permisos de admin.

### 4. Ver tu sitio
- En unos minutos estará en: **https://TU-USUARIO.github.io/Write-Up-2026/**
- Si usas un dominio propio, configura el CNAME en Settings → Pages y el archivo **CNAME** en la raíz.

---

## Opción B: Dejar todo en CVromanforns-main (sin mover)

Si no mueves nada:
- GitHub Pages seguirá sirviendo desde la raíz del repo.
- La página de inicio sería: **https://TU-USUARIO.github.io/Write-Up-2026/CVromanforns-main/**
- El write up: **https://TU-USUARIO.github.io/Write-Up-2026/CVromanforns-main/writeup.html**

Los pasos 2, 3 y 4 son los mismos; solo cambia la URL (incluye `/CVromanforns-main/`).

---

## Resumen rápido (Opción A)
1. Mover contenido de `CVromanforns-main/` a la raíz.
2. `git add .` → `git commit -m "..."` → `git push`.
3. GitHub → Settings → Pages → Source: main, Folder: / (root).
4. Abrir **https://TU-USUARIO.github.io/Write-Up-2026/**.
