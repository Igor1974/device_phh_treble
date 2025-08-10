# MTK Tablet Fix Kit for device_phh_treble

**Universal fix for MediaTek-based tablets** (MT8788, MT8768, MT8167, etc.)  
🔧 Designed to fix boot issues on devices like:
- F+ T800
- Lenovo TB-87xx
- Alldocube iPlay
- Any MT87xx/MT81xx tablet

---

## 🛠️ Проблемы, которые решает

- ❌ `avc: denied { search } for name="mm"` — SELinux блокирует доступ к `/sys/class/mm`
- ❌ `Fatal signal 6 (SIGABRT)` в `mediaserver` и `system_server`
- ❌ `ubsan: sub-overflow` в `libmedia_codeclist_capabilities.so`
- ❌ Ошибки `vndk_detect`, `aconfigd`, `extra_free_kbytes`, `netd`, `wmt_loader`, `incidentd`, `mtk_hal_*` и других `init`-сервисов

> ✅ **Решение**: добавление **стоковой `libmedia_codeclist_capabilities.so`** и **универсального доступа к `/sys/class/mm` через `init_daemon_domain(sysfs_mm)`**

---

## 📦 Что включено

- ✅ `libmedia_codeclist_capabilities.so` (32/64-bit) — из стоковой прошивки MT8788
- ✅ SELinux: `init_daemon_domain(sysfs_mm)` — доступ ко всем `init`-демонам
- ✅ `file_contexts` — контекст `u:object_r:sysfs_mm:s0` для `/sys/class/mm`
- ✅ Отдельный `device-mtk-tablet.mk` — не влияет на другие устройства

---

### 1. Добавь репозиторий в `roomservice.xml`
```bash
mkdir -p .repo/local_manifests
cat > .repo/local_manifests/roomservice.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="Igor1974/device_phh_treble" path="device/phh/treble" remote="github" />
</manifest>
EOF

    
## Синхронизируй исходники    
    repo sync device/phh/treble
    
## Подготовь проприетарные файлы    
    Помести стоковые файлы в:
    device/phh/treble/proprietary-files/mtk/tablet/lib/libmedia_codeclist_capabilities.so
    device/phh/treble/proprietary-files/mtk/tablet/lib64/libmedia_codeclist_capabilities.so

## Собери GSI. Выбери подходящую конфигурацию:
    Для 64-битных устройств
    lunch mtk_tablet_arm64-bgN-userdebug
    Для 32-битных устройств
    lunch mtk_tablet_arm-bgN-userdebug

make systemimage -j$(nproc)
