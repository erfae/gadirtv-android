.class public final Lcom/google/android/play/core/splitcompat/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/splitcompat/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitcompat/zze;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/zza;->zza:Lcom/google/android/play/core/splitcompat/zze;

    return-void
.end method

.method public static final zzc(Landroid/content/res/AssetManager;Ljava/io/File;)I
    .registers 5

    .line 1
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "addAssetPath"

    .line 2
    invoke-static {p0, v2, v0, v1, p1}, Lcom/google/android/play/core/internal/zzbw;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "addAssetPath completed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/content/Context;Ljava/util/Set;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/play/core/splitcompat/zza;->zzc(Landroid/content/res/AssetManager;Ljava/io/File;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_9

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;Ljava/util/Set;)Z
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_10
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    .line 2
    :try_start_5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c
    .catchall {:try_start_5 .. :try_end_b} :catchall_e

    goto :goto_19

    :catch_c
    move-exception v1

    goto :goto_12

    :catchall_e
    move-exception p1

    goto :goto_5b

    :catch_10
    move-exception v1

    const/4 v0, 0x0

    :goto_12
    :try_start_12
    const-string v2, "SplitCompat"

    const-string v3, "Unable to set up strict mode."

    .line 4
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_e

    .line 5
    :goto_19
    :try_start_19
    new-instance v1, Ljava/util/HashSet;

    .line 6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/splitcompat/zza;->zza:Lcom/google/android/play/core/splitcompat/zze;

    .line 8
    invoke-virtual {v3, v2}, Lcom/google/android/play/core/splitcompat/zze;->zzg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 9
    :cond_38
    invoke-virtual {p0, p1, v1}, Lcom/google/android/play/core/splitcompat/zza;->zza(Landroid/content/Context;Ljava/util/Set;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3b} :catch_44
    .catchall {:try_start_19 .. :try_end_3b} :catchall_42

    if-eqz v0, :cond_40

    .line 10
    :try_start_3d
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_e

    :cond_40
    const/4 p1, 0x1

    goto :goto_52

    :catchall_42
    move-exception p1

    goto :goto_54

    :catch_44
    move-exception p1

    :try_start_45
    const-string p2, "SplitCompat"

    const-string v1, "Error installing additional splits"

    .line 11
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    if-eqz v0, :cond_51

    .line 12
    :try_start_4e
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_e

    :cond_51
    const/4 p1, 0x0

    :goto_52
    monitor-exit p0

    return p1

    :goto_54
    if-nez v0, :cond_57

    goto :goto_5a

    :cond_57
    :try_start_57
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 13
    :goto_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_e

    :goto_5b
    monitor-exit p0

    throw p1
.end method
