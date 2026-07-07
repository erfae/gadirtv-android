.class public Lcom/google/android/gms/cast/framework/CastContext;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field public static final OPTIONS_PROVIDER_CLASS_NAME_KEY:Ljava/lang/String; = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

.field private static zzjs:Lcom/google/android/gms/cast/framework/CastContext;

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzjt:Landroid/content/Context;

.field private final zzju:Lcom/google/android/gms/cast/framework/zzh;

.field private final zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzjw:Lcom/google/android/gms/cast/framework/zzg;

.field private final zzjx:Lcom/google/android/gms/cast/framework/PrecacheManager;

.field private final zzjy:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

.field private final zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private zzka:Lcom/google/android/gms/internal/cast/zzax;

.field private zzkb:Lcom/google/android/gms/internal/cast/zzah;

.field private final zzkc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 195
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Unable to call %s on %s."

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/cast/zzax;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzax;-><init>(Landroidx/mediarouter/media/MediaRouter;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzka:Lcom/google/android/gms/internal/cast/zzax;

    .line 35
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzkc:Ljava/util/List;

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzx()V

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzw()Ljava/util/Map;

    move-result-object p3

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzka:Lcom/google/android/gms/internal/cast/zzax;

    .line 39
    invoke-static {p1, p2, v1, p3}, Lcom/google/android/gms/internal/cast/zzae;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzai;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzju:Lcom/google/android/gms/cast/framework/zzh;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/zzh;->zzah()Lcom/google/android/gms/cast/framework/zzn;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "getDiscoveryManagerImpl"

    aput-object v5, v4, p3

    const-class v5, Lcom/google/android/gms/cast/framework/zzh;

    .line 45
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    .line 46
    invoke-virtual {v3, p1, v0, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 48
    :cond_0
    new-instance v3, Lcom/google/android/gms/cast/framework/zzg;

    invoke-direct {v3, p1}, Lcom/google/android/gms/cast/framework/zzg;-><init>(Lcom/google/android/gms/cast/framework/zzn;)V

    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjw:Lcom/google/android/gms/cast/framework/zzg;

    .line 50
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzju:Lcom/google/android/gms/cast/framework/zzh;

    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/zzh;->zzag()Lcom/google/android/gms/cast/framework/zzt;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 53
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "getSessionManagerImpl"

    aput-object v4, v1, p3

    const-class p3, Lcom/google/android/gms/cast/framework/zzh;

    .line 54
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    .line 55
    invoke-virtual {v3, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v2

    :goto_2
    if-nez p1, :cond_1

    move-object p2, v2

    goto :goto_3

    .line 57
    :cond_1
    new-instance p2, Lcom/google/android/gms/cast/framework/SessionManager;

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/cast/framework/SessionManager;-><init>(Lcom/google/android/gms/cast/framework/zzt;Landroid/content/Context;)V

    :goto_3
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 58
    new-instance p1, Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    invoke-direct {p1, p2}, Lcom/google/android/gms/cast/framework/MediaNotificationManager;-><init>(Lcom/google/android/gms/cast/framework/SessionManager;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjy:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    if-nez p2, :cond_2

    goto :goto_4

    .line 62
    :cond_2
    new-instance v2, Lcom/google/android/gms/cast/framework/PrecacheManager;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/cast/framework/CastContext;->zzc(Landroid/content/Context;)Lcom/google/android/gms/cast/internal/zzf;

    move-result-object p3

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/cast/framework/PrecacheManager;-><init>(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/cast/internal/zzf;)V

    :goto_4
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjx:Lcom/google/android/gms/cast/framework/PrecacheManager;

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->zzc(Landroid/content/Context;)Lcom/google/android/gms/cast/internal/zzf;

    move-result-object p1

    const-string p2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    const-string p3, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    const-string v0, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    filled-new-array {p2, p3, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/internal/zzf;->zza([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/cast/framework/zzb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/zzb;-><init>(Lcom/google/android/gms/cast/framework/CastContext;)V

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzjs:Lcom/google/android/gms/cast/framework/CastContext;

    return-object v0
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzjs:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/cast/framework/CastContext;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/cast/framework/CastContext;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V

    sput-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzjs:Lcom/google/android/gms/cast/framework/CastContext;

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjs:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently."

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastSession;->getVolume()D

    move-result-wide v1

    add-double/2addr v1, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v1, p1

    if-lez p3, :cond_0

    move-wide v1, p1

    .line 160
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->setVolume(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 163
    :goto_0
    sget-object p1, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const-string p0, "Unable to call CastSession.setVolume(double)."

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v0
.end method

.method private static zzb(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 18
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 20
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-string v2, "Bundle is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 24
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/cast/framework/OptionsProvider;

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Class;

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/framework/OptionsProvider;

    return-object p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    .line 30
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to initialize CastContext."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzc(Landroid/content/Context;)Lcom/google/android/gms/cast/internal/zzf;
    .locals 1

    .line 165
    new-instance v0, Lcom/google/android/gms/cast/internal/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/internal/zzf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final zzw()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzkb:Lcom/google/android/gms/internal/cast/zzah;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzkb:Lcom/google/android/gms/internal/cast/zzah;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->zzat()Landroid/os/IBinder;

    move-result-object v2

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzkc:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/SessionProvider;

    const-string v3, "Additional SessionProvider must not be null."

    .line 74
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Category for SessionProvider must not be null or empty string."

    .line 77
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v6, "SessionProvider for category %s already added"

    .line 80
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->zzat()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzx()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/cast/zzah;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzka:Lcom/google/android/gms/internal/cast/zzax;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzah;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzax;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzkb:Lcom/google/android/gms/internal/cast/zzah;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzkb:Lcom/google/android/gms/internal/cast/zzah;

    return-void
.end method


# virtual methods
.method public addAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    return-void
.end method

.method public getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    return-object v0
.end method

.method public getCastState()I
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCastState()I

    move-result v0

    return v0
.end method

.method public getMediaNotificationManager()Lcom/google/android/gms/cast/framework/MediaNotificationManager;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjy:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    return-object v0
.end method

.method public getMergedSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzju:Lcom/google/android/gms/cast/framework/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzh;->zzaf()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getMergedSelectorAsBundle"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/gms/cast/framework/zzh;

    .line 97
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 98
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrecacheManager()Lcom/google/android/gms/cast/framework/PrecacheManager;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjx:Lcom/google/android/gms/cast/framework/PrecacheManager;

    return-object v0
.end method

.method public getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    return-object v0
.end method

.method public isAppVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onDispatchVolumeKeyEventBeforeJellyBean(Landroid/view/KeyEvent;)Z
    .locals 7

    const-string v0, "Must be called from the main thread."

    .line 142
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getVolumeDeltaBeforeIceCreamSandwich()D

    move-result-wide v2

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v6, 0x18

    if-eq p1, v6, :cond_4

    const/16 v6, 0x19

    if-eq p1, v6, :cond_3

    return v1

    :cond_3
    neg-double v1, v2

    .line 153
    invoke-static {v0, v1, v2, v4}, Lcom/google/android/gms/cast/framework/CastContext;->zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z

    return v5

    .line 151
    :cond_4
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/cast/framework/CastContext;->zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z

    return v5

    :cond_5
    :goto_1
    return v1
.end method

.method public removeAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    return-void
.end method

.method public setReceiverApplicationId(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Must be called from the main thread."

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/CastOptions;->setReceiverApplicationId(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzx()V

    .line 130
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzw()Ljava/util/Map;

    move-result-object v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzju:Lcom/google/android/gms/cast/framework/zzh;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/cast/framework/zzh;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setReceiverApplicationId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzh;

    .line 135
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 136
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->zzd(Landroid/content/Context;)V

    return-void
.end method

.method final synthetic zzb(Landroid/os/Bundle;)V
    .locals 8

    .line 167
    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzf;->zzlw:Z

    if-eqz v0, :cond_3

    const-string v0, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 171
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_3

    .line 173
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 174
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    .line 175
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "client_cast_analytics_data"

    aput-object v7, v6, v1

    const-string v1, "%s.%s"

    .line 176
    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    .line 178
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 179
    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjt:Landroid/content/Context;

    .line 181
    invoke-static {v2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object v2

    sget-object v5, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-virtual {v2, v5}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    move-result-object v2

    .line 183
    const-class v5, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    sget-object v6, Lcom/google/android/gms/cast/framework/zza;->zzkf:Lcom/google/android/datatransport/Transformer;

    const-string v7, "CAST_SENDER_SDK"

    invoke-interface {v2, v7, v5, v6}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v2

    const-string v5, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 185
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 187
    invoke-static {v1, v2, v5, v6}, Lcom/google/android/gms/internal/cast/zzf;->zza(Landroid/content/SharedPreferences;Lcom/google/android/datatransport/Transport;J)Lcom/google/android/gms/internal/cast/zzf;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lcom/google/android/gms/internal/cast/zzg;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzg;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzf;)V

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zzg;->zza(Lcom/google/android/gms/cast/framework/SessionManager;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 192
    invoke-static {v1, p1, v4}, Lcom/google/android/gms/internal/cast/zzm;->zza(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzm;

    .line 193
    sget-object p1, Lcom/google/android/gms/internal/cast/zzjg;->zzazo:Lcom/google/android/gms/internal/cast/zzjg;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzm;->zza(Lcom/google/android/gms/internal/cast/zzjg;)V

    :cond_3
    return-void
.end method

.method public final zzy()Z
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzju:Lcom/google/android/gms/cast/framework/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzh;->zzy()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "hasActivityInRecents"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzh;

    .line 109
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 110
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final zzz()Lcom/google/android/gms/cast/framework/zzg;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 140
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzjw:Lcom/google/android/gms/cast/framework/zzg;

    return-object v0
.end method
