.class public Lcom/magoware/magoware/webtv/MagowareApplication;
.super Landroid/app/Application;
.source "MagowareApplication.java"

# interfaces
.implements Ldagger/android/HasActivityInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/MagowareApplication$Keys;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_ACTION_FILE:Ljava/lang/String; = "actions"

.field private static final DOWNLOAD_CONTENT_DIRECTORY:Ljava/lang/String; = "downloads"

.field private static final DOWNLOAD_TRACKER_ACTION_FILE:Ljava/lang/String; = "tracked_actions"

.field private static final MAX_SIMULTANEOUS_DOWNLOADS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MagowareApplication"

.field private static instance:Lcom/magoware/magoware/webtv/MagowareApplication;


# instance fields
.field private androidDownloadManager:Landroid/app/DownloadManager;

.field dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private downloadDirectory:Ljava/io/File;

.field private downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private downloadTracker:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

.field private index:I

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;

.field private previousOrientation:I

.field private specialTracker:Lcom/google/android/gms/analytics/Tracker;

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->previousOrientation:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->index:I

    return-void
.end method

.method private static buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "upstreamFactory",
            "cache"
        }
    .end annotation

    .line 192
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object v7
.end method

.method public static get()Lcom/magoware/magoware/webtv/MagowareApplication;
    .locals 1

    .line 76
    sget-object v0, Lcom/magoware/magoware/webtv/MagowareApplication;->instance:Lcom/magoware/magoware/webtv/MagowareApplication;

    return-object v0
.end method


# virtual methods
.method public activityInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 124
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public buildDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2

    .line 185
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    .line 186
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MagowareApplication;->buildHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 187
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2

    .line 178
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAndroidDownloadManager()Landroid/app/DownloadManager;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->androidDownloadManager:Landroid/app/DownloadManager;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->androidDownloadManager:Landroid/app/DownloadManager;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->androidDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method public getBean()Ljava/lang/String;
    .locals 2

    .line 152
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    :cond_0
    return-object v1
.end method

.method public declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    const/16 v1, 0xf

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    const-string v1, "UA-79012733-1"

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackeri tek analytics application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/framework/utilityframe/log/log;->i(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 96
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 99
    new-instance v1, Lcom/magoware/magoware/webtv/util/AnalyticsExceptionParser;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/util/AnalyticsExceptionParser;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ExceptionReporter;->setExceptionParser(Lcom/google/android/gms/analytics/ExceptionParser;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviousOrientation()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->previousOrientation:I

    return v0
.end method

.method public declared-synchronized getSpecificTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracking_id"
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->specialTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    const/16 v2, 0xf

    .line 112
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 113
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->specialTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 115
    iget-object p1, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->specialTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->specialTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 132
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 136
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 139
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 140
    sget-object v0, Lcom/magoware/magoware/webtv/di/AppInjector;->Factory:Lcom/magoware/magoware/webtv/di/AppInjector$Factory;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/di/AppInjector$Factory;->initApp(Lcom/magoware/magoware/webtv/MagowareApplication;)V

    .line 142
    sput-object p0, Lcom/magoware/magoware/webtv/MagowareApplication;->instance:Lcom/magoware/magoware/webtv/MagowareApplication;

    const-string v0, "ExoPlayerDemo"

    .line 143
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->userAgent:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->initialize(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getCompanyId()I

    move-result v0

    sput v0, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    .line 148
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getAuthorization(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public native prk(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "j"
        }
    .end annotation
.end method

.method public setPreviousOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 170
    iput p1, p0, Lcom/magoware/magoware/webtv/MagowareApplication;->previousOrientation:I

    return-void
.end method
