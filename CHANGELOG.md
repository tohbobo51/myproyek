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
  - Warna target zone: HIJAU → KUNING (lebih mudah dilihat)
  - Warna indicator: MERAH → PUTIH (lebih kelihatan)
  - Ukuran target zone: TIPIS (10-30px, sesuai level) bukan LEBAR (60px)
  - Ukuran indicator: 2px → 4px (lebih mudah dilihat)
  - Fix visibility issue: Indicator hilang setelah mantul 2x (recreate textdraw setiap update)
  - Difficulty scaling: Level RENDAH = target BESAR (mudah), Level TINGGI = target KECIL + speed CEPAT (susah)

---

## Format Referensi

- `Added` - Fitur baru
- `Changed` - Perubahan pada fitur yang ada
- `Deprecated` - Fitur yang akan dihapus
- `Removed` - Fitur yang dihapus
- `Fixed` - Perbaikan bug
- `Security` - Perbaikan security

