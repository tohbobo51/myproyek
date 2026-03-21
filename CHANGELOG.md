# Changelog

Semua perubahan penting akan dicatat di file ini.

---

## [Unreleased]

### Added
- Initial setup dari zip file
- Safety protocol untuk code modification
- Git repository initialization

### Fixed
- **Minigame Mekanik/Bengkel** - Perbaikan besar:
  - Warna target zone: **HIJAU** (mudah dilihat)
  - Warna indicator: **PUTIH** (lebih kelihatan)
  - Ukuran indicator: 2px → 4px (lebih mudah dilihat)
  - Fix visibility issue: Indicator hilang setelah mantul 2x (recreate textdraw)
  - **Difficulty scaling dibalik:**
    - Level RENDAH = target KECIL + speed CEPAT (SUSAH)
    - Level TINGGI = target BESAR + speed LAMBAT (MUDAH)

---

## Format Referensi

- `Added` - Fitur baru
- `Changed` - Perubahan pada fitur yang ada
- `Deprecated` - Fitur yang akan dihapus
- `Removed` - Fitur yang dihapus
- `Fixed` - Perbaikan bug
- `Security` - Perbaikan security

