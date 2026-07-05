<div align="center">

<img src="https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
<img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
<img src="https://img.shields.io/badge/Hive-Local%20Storage-FFCF56?style=for-the-badge"/>

<br/><br/>

# ✅ Taskati

### A to-do app with offline-first storage and date-filtered tasks

</div>

---

## About

**Taskati** is a task-management app that persists everything locally with **Hive**
(no backend required), so tasks survive app restarts instantly with zero network
latency.

## Features

- **Add tasks** with a dedicated add-task flow
- **Filter tasks by date** — see only what's relevant to today, or browse by day
- **Color-coded tasks** — pick a color per task for quick visual grouping
- **Profile screen** with a picked profile photo (`image_picker`)
- **Animated splash screen** on launch
- **Offline-first** — all data stored locally via `hive` / `hive_flutter`, no
  internet connection needed

## Tech Stack

| Category | Choice |
|---|---|
| Framework | Flutter / Dart |
| Local Storage | `hive`, `hive_flutter` |
| Media | `image_picker` |
| Responsive UI | `flutter_screenutil` |

## Project Structure

```
lib/
├── featurs/
│   ├── add_task/          # Add-task screen
│   ├── home/               # Home screen, task model, task card/filter widgets
│   ├── profile_screen/
│   ├── splash_screen/
│   └── Taskati_app/        # App root + color-picker & shared widgets
└── main.dart
```

## Getting Started

```bash
flutter pub get
flutter run
```

---

## Contact

Built by **Osama Yosef** — Flutter Developer
📧 osamayosef038@gmail.com
💼 [LinkedIn — Osama Yosef](https://www.linkedin.com/in/osama-yosef-819268319)
