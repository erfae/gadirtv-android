.class public final Lcom/google/android/gms/internal/cast/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field private static final zzmn:Ljava/lang/String;

.field private static zzmo:Lcom/google/android/gms/internal/cast/zzm;

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final packageName:Ljava/lang/String;

.field private final zzma:Lcom/google/android/gms/internal/cast/zzf;

.field private final zzmc:Landroid/content/SharedPreferences;

.field private final zzmp:Ljava/lang/Runnable;

.field private zzmq:J

.field private zzmr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/cast/zzjg;",
            ">;"
        }
    .end annotation
.end field

.field private zzms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/cast/zzjg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "FeatureUsageAnalytics"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzm;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    .line 132
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    const-string v1, "play-services-cast"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzm;->zzmn:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzf;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->zzms:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzma:Lcom/google/android/gms/internal/cast/zzf;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzm;->packageName:Ljava/lang/String;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/cast/zzdr;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/cast/zzdr;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->handler:Landroid/os/Handler;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/cast/zzp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/cast/zzp;-><init>(Lcom/google/android/gms/internal/cast/zzm;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmp:Ljava/lang/Runnable;

    const-string p2, "feature_usage_sdk_version"

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feature_usage_package_name"

    .line 12
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    .line 14
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzm;->zzms:Ljava/util/Set;

    const-wide/16 v3, 0x0

    .line 15
    iput-wide v3, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmq:J

    .line 16
    sget-object v5, Lcom/google/android/gms/internal/cast/zzm;->zzmn:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "feature_usage_timestamp_"

    const-string v6, "feature_usage_last_report_time"

    if-eqz v1, :cond_5

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 32
    :cond_0
    invoke-interface {p1, v6, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmq:J

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzm;->getCurrentTime()J

    move-result-wide p2

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-eqz v2, :cond_2

    sub-long v6, p2, v6

    const-wide/32 v8, 0x48190800

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "feature_usage_timestamp_reported_feature_"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v6, 0x29

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzm;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjg;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzms:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "feature_usage_timestamp_detected_feature_"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzm;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjg;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzm;->zza(Ljava/util/Set;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzm;->zzbc()V

    return-void

    .line 18
    :cond_5
    :goto_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_7
    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/cast/zzm;->zza(Ljava/util/Set;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/internal/cast/zzm;->zzmn:Ljava/lang/String;

    .line 27
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzm;->packageName:Ljava/lang/String;

    .line 28
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static getCurrentTime()J
    .locals 2

    .line 80
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized zza(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzm;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/cast/zzm;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzm;->zzmo:Lcom/google/android/gms/internal/cast/zzm;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/google/android/gms/internal/cast/zzm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzm;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzf;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzm;->zzmo:Lcom/google/android/gms/internal/cast/zzm;

    .line 59
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/cast/zzm;->zzmo:Lcom/google/android/gms/internal/cast/zzm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzjg;)V
    .locals 5

    .line 60
    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzf;->zzlw:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzm;->zzmo:Lcom/google/android/gms/internal/cast/zzm;

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjg;->zzfw()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzm;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzm;->getCurrentTime()J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzm;->zzbc()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zza(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final zzbc()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s%s"

    .line 81
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "feature_usage_timestamp_reported_feature_"

    .line 82
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "feature_usage_timestamp_detected_feature_"

    .line 85
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjg;
    .locals 0

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzjg;->zzae(I)Lcom/google/android/gms/internal/cast/zzjg;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    sget-object p0, Lcom/google/android/gms/internal/cast/zzjg;->zzazj:Lcom/google/android/gms/internal/cast/zzjg;

    :goto_0
    return-object p0
.end method


# virtual methods
.method final synthetic zzbd()V
    .locals 10

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->zzms:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xa4cb800

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 96
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzm;->getCurrentTime()J

    move-result-wide v2

    .line 97
    iget-wide v4, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmq:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    sub-long v4, v2, v4

    cmp-long v8, v4, v0

    if-ltz v8, :cond_4

    .line 98
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzm;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Upload the feature usage report."

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zze;->zzge()Lcom/google/android/gms/internal/cast/zzjm$zze$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/cast/zzm;->zzmn:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zze$zza;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjm$zze$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->packageName:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzjm$zze$zza;->zzak(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzjm$zze$zza;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zze;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzb;->zzga()Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;->zzb(Lcom/google/android/gms/internal/cast/zzjm$zze;)Lcom/google/android/gms/internal/cast/zzjm$zzb$zza;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzb;

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzjm$zzj;->zzgn()Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;->zzb(Lcom/google/android/gms/internal/cast/zzjm$zzb;)Lcom/google/android/gms/internal/cast/zzjm$zzj$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzlc$zza;->zzjd()Lcom/google/android/gms/internal/cast/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzjm$zzj;

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzma:Lcom/google/android/gms/internal/cast/zzf;

    sget-object v4, Lcom/google/android/gms/internal/cast/zzhb;->zzasz:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzms:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    new-instance v1, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmr:Ljava/util/Set;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzm;->zzms:Ljava/util/Set;

    .line 116
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzjg;

    .line 117
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzjg;->zzfw()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/cast/zzm;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "feature_usage_timestamp_reported_feature_"

    .line 121
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/cast/zzm;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 123
    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmc:Landroid/content/SharedPreferences;

    invoke-interface {v8, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 124
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    cmp-long v5, v8, v6

    if-eqz v5, :cond_2

    .line 126
    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 128
    :cond_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/cast/zzm;->zzmq:J

    const-string v1, "feature_usage_last_report_time"

    .line 129
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method
