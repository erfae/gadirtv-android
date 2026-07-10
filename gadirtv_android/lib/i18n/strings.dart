import 'package:flutter/material.dart';

import '../services/prefs_settings.dart';

/// Tiny hand-rolled i18n layer. We avoid `flutter_localizations` +
/// `intl` because they force ARB files, code-gen and locale delegates
/// which are overkill for a fixed set of ~80 strings.
///
/// Usage:
///   final t = AppI18n.of(context);
///   Text(t.movies);
///
/// To change the language at runtime, wrap the app in a
/// [AppI18nProvider], read the current locale from [PrefsSettings] and
/// call `setLocale('en')` when the settings screen picks a new value.
class AppStrings {
  const AppStrings({
    required this.locale,
    required this.appName,
    required this.tabHome,
    required this.tabLive,
    required this.tabMovies,
    required this.tabSeries,
    required this.search,
    required this.reloadPlaylist,
    required this.exitApp,
    required this.settings,
    required this.exit,
    required this.cancel,
    required this.exitConfirmTitle,
    required this.exitConfirmBody,
    required this.language,
    required this.languageDefault,
    required this.backup,
    required this.backupDescription,
    required this.backupCreate,
    required this.backupRestore,
    required this.backupCreated,
    required this.backupCreateFailed,
    required this.backupRestored,
    required this.backupInvalid,
    required this.backupRestoreFailed,
    required this.about,
    required this.categoryAll,
    required this.categoryFavorites,
    required this.season,
    required this.seasons,
    required this.episodes,
    required this.noEpisodes,
    required this.noSeasons,
    required this.synopsis,
    required this.noSynopsis,
    required this.cast,
    required this.director,
    required this.watchNow,
    required this.resume,
    required this.movie,
    required this.series,
    required this.live,
    required this.noSignal,
    required this.noSignalBody,
    required this.selectChannel,
    required this.epgUnavailable,
    required this.now,
    required this.next,
    required this.mute,
    required this.unmute,
    required this.fullscreen,
    required this.reloading,
    required this.channelsNotFound,
    required this.noFavoritesYet,
    required this.categoriesLoadError,
    required this.channelsLoadError,
    required this.back,
  });

  final String locale;

  final String appName;
  final String tabHome;
  final String tabLive;
  final String tabMovies;
  final String tabSeries;

  final String search;
  final String reloadPlaylist;
  final String exitApp;
  final String settings;
  final String exit;
  final String cancel;
  final String exitConfirmTitle;
  final String exitConfirmBody;

  final String language;
  final String languageDefault;

  final String backup;
  final String backupDescription;
  final String backupCreate;
  final String backupRestore;
  final String backupCreated;
  final String backupCreateFailed;
  final String backupRestored;
  final String backupInvalid;
  final String backupRestoreFailed;

  final String about;

  final String categoryAll;
  final String categoryFavorites;

  final String season;
  final String seasons;
  final String episodes;
  final String noEpisodes;
  final String noSeasons;

  final String synopsis;
  final String noSynopsis;
  final String cast;
  final String director;
  final String watchNow;
  final String resume;

  final String movie;
  final String series;
  final String live;

  final String noSignal;
  final String noSignalBody;
  final String selectChannel;
  final String epgUnavailable;
  final String now;
  final String next;
  final String mute;
  final String unmute;
  final String fullscreen;
  final String reloading;
  final String channelsNotFound;
  final String noFavoritesYet;
  final String categoriesLoadError;
  final String channelsLoadError;
  final String back;

  static const _es = AppStrings(
    locale: 'es',
    appName: 'GadirTV',
    tabHome: 'Inicio',
    tabLive: 'TV en Vivo',
    tabMovies: 'Películas',
    tabSeries: 'Series',
    search: 'Buscar',
    reloadPlaylist: 'Recargar listas',
    exitApp: 'Salir',
    settings: 'Ajustes',
    exit: 'SALIR',
    cancel: 'Cancelar',
    exitConfirmTitle: 'Cerrar aplicación',
    exitConfirmBody: '¿Seguro que quieres salir de GadirTV?',
    language: 'Idioma',
    languageDefault: '(predeterminado)',
    backup: 'Copia de seguridad',
    backupDescription:
        'Guarda tus perfiles, favoritos y progreso en un archivo, o restáuralos desde uno anterior.',
    backupCreate: 'CREAR ARCHIVO DE BACKUP',
    backupRestore: 'RESTAURAR DESDE ARCHIVO',
    backupCreated: 'Backup creado — elige dónde guardarlo',
    backupCreateFailed: 'No se pudo crear el backup',
    backupRestored: 'Backup restaurado — reinicia la app para aplicar los cambios',
    backupInvalid: 'El archivo no es un backup válido de GadirTV',
    backupRestoreFailed: 'Error al restaurar',
    about: 'Acerca de',
    categoryAll: 'Todos',
    categoryFavorites: '★ Favoritos',
    season: 'Temporada',
    seasons: 'Temporadas',
    episodes: 'episodios',
    noEpisodes: 'No hay episodios en esta temporada',
    noSeasons: 'No hay temporadas disponibles',
    synopsis: 'Sinopsis',
    noSynopsis: 'Sin sinopsis disponible.',
    cast: 'Reparto',
    director: 'Dirección',
    watchNow: 'VER AHORA',
    resume: 'CONTINUAR',
    movie: 'PELÍCULA',
    series: 'SERIE',
    live: 'EN DIRECTO',
    noSignal: 'SIN SEÑAL',
    noSignalBody: 'La emisión no está disponible en este momento.',
    selectChannel: 'Selecciona un canal para previsualizar',
    epgUnavailable: 'EPG no disponible',
    now: 'AHORA',
    next: 'Después',
    mute: 'Silenciar',
    unmute: 'Activar audio',
    fullscreen: 'Pantalla completa',
    reloading: 'Recargando listas…',
    channelsNotFound: 'No hay canales en esta categoría',
    noFavoritesYet: 'Todavía no has marcado ningún canal como favorito.',
    categoriesLoadError: 'No se pudieron cargar las categorías',
    channelsLoadError: 'No se pudieron cargar los canales',
    back: 'Atrás',
  );

  static const _en = AppStrings(
    locale: 'en',
    appName: 'GadirTV',
    tabHome: 'Home',
    tabLive: 'Live TV',
    tabMovies: 'Movies',
    tabSeries: 'Series',
    search: 'Search',
    reloadPlaylist: 'Reload playlists',
    exitApp: 'Exit',
    settings: 'Settings',
    exit: 'EXIT',
    cancel: 'Cancel',
    exitConfirmTitle: 'Close application',
    exitConfirmBody: 'Are you sure you want to close GadirTV?',
    language: 'Language',
    languageDefault: '(default)',
    backup: 'Backup',
    backupDescription:
        'Save your profiles, favorites and progress to a file, or restore them from a previous one.',
    backupCreate: 'CREATE BACKUP FILE',
    backupRestore: 'RESTORE FROM FILE',
    backupCreated: 'Backup created — choose where to save it',
    backupCreateFailed: 'Could not create backup',
    backupRestored: 'Backup restored — restart the app to apply the changes',
    backupInvalid: 'The file is not a valid GadirTV backup',
    backupRestoreFailed: 'Restore error',
    about: 'About',
    categoryAll: 'All',
    categoryFavorites: '★ Favorites',
    season: 'Season',
    seasons: 'Seasons',
    episodes: 'episodes',
    noEpisodes: 'No episodes in this season',
    noSeasons: 'No seasons available',
    synopsis: 'Synopsis',
    noSynopsis: 'No synopsis available.',
    cast: 'Cast',
    director: 'Director',
    watchNow: 'WATCH NOW',
    resume: 'RESUME',
    movie: 'MOVIE',
    series: 'SERIES',
    live: 'LIVE',
    noSignal: 'NO SIGNAL',
    noSignalBody: 'The broadcast is not available at the moment.',
    selectChannel: 'Select a channel to preview',
    epgUnavailable: 'EPG unavailable',
    now: 'NOW',
    next: 'Next',
    mute: 'Mute',
    unmute: 'Unmute',
    fullscreen: 'Fullscreen',
    reloading: 'Reloading playlists…',
    channelsNotFound: 'No channels in this category',
    noFavoritesYet: "You haven't marked any channels as favorite yet.",
    categoriesLoadError: 'Could not load categories',
    channelsLoadError: 'Could not load channels',
    back: 'Back',
  );

  static const _fr = AppStrings(
    locale: 'fr',
    appName: 'GadirTV',
    tabHome: 'Accueil',
    tabLive: 'TV en direct',
    tabMovies: 'Films',
    tabSeries: 'Séries',
    search: 'Rechercher',
    reloadPlaylist: 'Recharger les listes',
    exitApp: 'Quitter',
    settings: 'Paramètres',
    exit: 'QUITTER',
    cancel: 'Annuler',
    exitConfirmTitle: 'Fermer l\'application',
    exitConfirmBody: 'Voulez-vous vraiment quitter GadirTV ?',
    language: 'Langue',
    languageDefault: '(par défaut)',
    backup: 'Sauvegarde',
    backupDescription:
        'Enregistrez vos profils, favoris et progression dans un fichier, ou restaurez-les depuis un fichier précédent.',
    backupCreate: 'CRÉER LE FICHIER DE SAUVEGARDE',
    backupRestore: 'RESTAURER DEPUIS UN FICHIER',
    backupCreated: 'Sauvegarde créée — choisissez où l\'enregistrer',
    backupCreateFailed: 'Impossible de créer la sauvegarde',
    backupRestored: 'Sauvegarde restaurée — redémarrez l\'application',
    backupInvalid: 'Le fichier n\'est pas une sauvegarde GadirTV valide',
    backupRestoreFailed: 'Erreur de restauration',
    about: 'À propos',
    categoryAll: 'Toutes',
    categoryFavorites: '★ Favoris',
    season: 'Saison',
    seasons: 'Saisons',
    episodes: 'épisodes',
    noEpisodes: 'Aucun épisode dans cette saison',
    noSeasons: 'Aucune saison disponible',
    synopsis: 'Synopsis',
    noSynopsis: 'Aucun synopsis disponible.',
    cast: 'Casting',
    director: 'Réalisation',
    watchNow: 'REGARDER',
    resume: 'REPRENDRE',
    movie: 'FILM',
    series: 'SÉRIE',
    live: 'EN DIRECT',
    noSignal: 'PAS DE SIGNAL',
    noSignalBody: 'La diffusion n\'est pas disponible pour le moment.',
    selectChannel: 'Sélectionnez une chaîne à prévisualiser',
    epgUnavailable: 'EPG indisponible',
    now: 'MAINTENANT',
    next: 'Ensuite',
    mute: 'Muet',
    unmute: 'Activer le son',
    fullscreen: 'Plein écran',
    reloading: 'Rechargement des listes…',
    channelsNotFound: 'Aucune chaîne dans cette catégorie',
    noFavoritesYet: 'Vous n\'avez encore marqué aucune chaîne comme favorite.',
    categoriesLoadError: 'Impossible de charger les catégories',
    channelsLoadError: 'Impossible de charger les chaînes',
    back: 'Retour',
  );

  static const _de = AppStrings(
    locale: 'de',
    appName: 'GadirTV',
    tabHome: 'Start',
    tabLive: 'Live-TV',
    tabMovies: 'Filme',
    tabSeries: 'Serien',
    search: 'Suche',
    reloadPlaylist: 'Listen neu laden',
    exitApp: 'Beenden',
    settings: 'Einstellungen',
    exit: 'BEENDEN',
    cancel: 'Abbrechen',
    exitConfirmTitle: 'App schließen',
    exitConfirmBody: 'Möchtest du GadirTV wirklich schließen?',
    language: 'Sprache',
    languageDefault: '(Standard)',
    backup: 'Sicherung',
    backupDescription:
        'Speichere deine Profile, Favoriten und Fortschritte in einer Datei oder stelle sie aus einer vorherigen wieder her.',
    backupCreate: 'BACKUP-DATEI ERSTELLEN',
    backupRestore: 'AUS DATEI WIEDERHERSTELLEN',
    backupCreated: 'Backup erstellt — wähle den Speicherort',
    backupCreateFailed: 'Backup konnte nicht erstellt werden',
    backupRestored: 'Backup wiederhergestellt — App neu starten',
    backupInvalid: 'Die Datei ist kein gültiges GadirTV-Backup',
    backupRestoreFailed: 'Wiederherstellungsfehler',
    about: 'Über',
    categoryAll: 'Alle',
    categoryFavorites: '★ Favoriten',
    season: 'Staffel',
    seasons: 'Staffeln',
    episodes: 'Folgen',
    noEpisodes: 'Keine Folgen in dieser Staffel',
    noSeasons: 'Keine Staffeln verfügbar',
    synopsis: 'Handlung',
    noSynopsis: 'Keine Handlung verfügbar.',
    cast: 'Besetzung',
    director: 'Regie',
    watchNow: 'JETZT ANSEHEN',
    resume: 'FORTSETZEN',
    movie: 'FILM',
    series: 'SERIE',
    live: 'LIVE',
    noSignal: 'KEIN SIGNAL',
    noSignalBody: 'Die Übertragung ist derzeit nicht verfügbar.',
    selectChannel: 'Wähle einen Kanal zur Vorschau',
    epgUnavailable: 'EPG nicht verfügbar',
    now: 'JETZT',
    next: 'Danach',
    mute: 'Stumm',
    unmute: 'Ton an',
    fullscreen: 'Vollbild',
    reloading: 'Listen werden neu geladen…',
    channelsNotFound: 'Keine Kanäle in dieser Kategorie',
    noFavoritesYet: 'Du hast noch keine Kanäle als Favorit markiert.',
    categoriesLoadError: 'Kategorien konnten nicht geladen werden',
    channelsLoadError: 'Kanäle konnten nicht geladen werden',
    back: 'Zurück',
  );

  static const _ar = AppStrings(
    locale: 'ar',
    appName: 'GadirTV',
    tabHome: 'الرئيسية',
    tabLive: 'البث المباشر',
    tabMovies: 'الأفلام',
    tabSeries: 'المسلسلات',
    search: 'بحث',
    reloadPlaylist: 'إعادة تحميل القوائم',
    exitApp: 'خروج',
    settings: 'الإعدادات',
    exit: 'خروج',
    cancel: 'إلغاء',
    exitConfirmTitle: 'إغلاق التطبيق',
    exitConfirmBody: 'هل أنت متأكد من الخروج من GadirTV؟',
    language: 'اللغة',
    languageDefault: '(افتراضي)',
    backup: 'النسخ الاحتياطي',
    backupDescription:
        'احفظ ملفاتك الشخصية والمفضلة والتقدم في ملف، أو استعدها من ملف سابق.',
    backupCreate: 'إنشاء ملف النسخة الاحتياطية',
    backupRestore: 'الاستعادة من ملف',
    backupCreated: 'تم إنشاء النسخة الاحتياطية — اختر أين تحفظها',
    backupCreateFailed: 'تعذّر إنشاء النسخة الاحتياطية',
    backupRestored: 'تم استعادة النسخة الاحتياطية — أعد تشغيل التطبيق',
    backupInvalid: 'الملف ليس نسخة احتياطية صالحة لـ GadirTV',
    backupRestoreFailed: 'خطأ في الاستعادة',
    about: 'حول',
    categoryAll: 'الكل',
    categoryFavorites: '★ المفضلة',
    season: 'الموسم',
    seasons: 'المواسم',
    episodes: 'حلقة',
    noEpisodes: 'لا توجد حلقات في هذا الموسم',
    noSeasons: 'لا توجد مواسم متاحة',
    synopsis: 'الملخص',
    noSynopsis: 'لا يوجد ملخص متاح.',
    cast: 'الطاقم',
    director: 'المخرج',
    watchNow: 'شاهد الآن',
    resume: 'متابعة',
    movie: 'فيلم',
    series: 'مسلسل',
    live: 'مباشر',
    noSignal: 'لا توجد إشارة',
    noSignalBody: 'البث غير متوفر في هذه اللحظة.',
    selectChannel: 'اختر قناة للمعاينة',
    epgUnavailable: 'دليل البرامج غير متاح',
    now: 'الآن',
    next: 'التالي',
    mute: 'كتم',
    unmute: 'تشغيل الصوت',
    fullscreen: 'ملء الشاشة',
    reloading: 'جاري إعادة تحميل القوائم…',
    channelsNotFound: 'لا توجد قنوات في هذه الفئة',
    noFavoritesYet: 'لم تقم بتمييز أي قناة كمفضلة بعد.',
    categoriesLoadError: 'تعذّر تحميل الفئات',
    channelsLoadError: 'تعذّر تحميل القنوات',
    back: 'رجوع',
  );

  static const _zh = AppStrings(
    locale: 'zh',
    appName: 'GadirTV',
    tabHome: '首页',
    tabLive: '直播电视',
    tabMovies: '电影',
    tabSeries: '剧集',
    search: '搜索',
    reloadPlaylist: '重新加载列表',
    exitApp: '退出',
    settings: '设置',
    exit: '退出',
    cancel: '取消',
    exitConfirmTitle: '关闭应用',
    exitConfirmBody: '确定要退出 GadirTV 吗?',
    language: '语言',
    languageDefault: '(默认)',
    backup: '备份',
    backupDescription:
        '将您的配置文件、收藏和进度保存到文件,或从以前的文件中恢复。',
    backupCreate: '创建备份文件',
    backupRestore: '从文件恢复',
    backupCreated: '备份已创建 — 选择保存位置',
    backupCreateFailed: '无法创建备份',
    backupRestored: '备份已恢复 — 请重启应用以应用更改',
    backupInvalid: '文件不是有效的 GadirTV 备份',
    backupRestoreFailed: '恢复错误',
    about: '关于',
    categoryAll: '全部',
    categoryFavorites: '★ 收藏',
    season: '季',
    seasons: '季数',
    episodes: '集',
    noEpisodes: '本季暂无剧集',
    noSeasons: '暂无可用季',
    synopsis: '简介',
    noSynopsis: '暂无简介。',
    cast: '演员',
    director: '导演',
    watchNow: '立即观看',
    resume: '继续',
    movie: '电影',
    series: '剧集',
    live: '直播',
    noSignal: '无信号',
    noSignalBody: '目前无法获取信号。',
    selectChannel: '选择频道以预览',
    epgUnavailable: '节目单不可用',
    now: '现在',
    next: '接下来',
    mute: '静音',
    unmute: '取消静音',
    fullscreen: '全屏',
    reloading: '正在重新加载列表…',
    channelsNotFound: '此分类下暂无频道',
    noFavoritesYet: '您还未收藏任何频道。',
    categoriesLoadError: '无法加载分类',
    channelsLoadError: '无法加载频道',
    back: '返回',
  );

  static const Map<String, AppStrings> _byLocale = {
    'es': _es,
    'en': _en,
    'fr': _fr,
    'de': _de,
    'ar': _ar,
    'zh': _zh,
  };

  static AppStrings forLocale(String code) => _byLocale[code] ?? _es;
}

/// Simple InheritedNotifier that broadcasts locale changes to all
/// widgets that call [AppI18n.of(context)].
class AppI18n extends InheritedNotifier<AppI18nController> {
  const AppI18n({super.key, required AppI18nController controller, required super.child})
      : super(notifier: controller);

  static AppStrings of(BuildContext context) {
    final w = context.dependOnInheritedWidgetOfExactType<AppI18n>();
    return w?.notifier?.strings ?? AppStrings.forLocale('es');
  }

  static AppI18nController controllerOf(BuildContext context) {
    final w = context.dependOnInheritedWidgetOfExactType<AppI18n>();
    return w!.notifier!;
  }
}

class AppI18nController extends ChangeNotifier {
  AppI18nController(this._code) : _strings = AppStrings.forLocale(_code);

  String _code;
  AppStrings _strings;

  String get locale => _code;
  AppStrings get strings => _strings;
  bool get isRtl => _code == 'ar';

  void setLocale(String code) {
    if (code == _code) return;
    _code = code;
    _strings = AppStrings.forLocale(code);
    notifyListeners();
  }
}
