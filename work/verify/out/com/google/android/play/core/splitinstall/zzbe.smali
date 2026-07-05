.class public final Lcom/google/android/play/core/splitinstall/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzbe;->zza:Landroid/content/Context;

    return-void
.end method

.method private final zze()Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzbe;->zza:Landroid/content/Context;

    const-string v1, "playcore_split_install_internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/util/Set;
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/play/core/splitinstall/zzbe;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/zzbe;->zze()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "modules_to_uninstall_if_emulated"

    .line 2
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/util/HashSet;

    .line 3
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1c
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_21

    :catchall_1a
    move-exception v1

    goto :goto_23

    .line 4
    :catch_1c
    :try_start_1c
    new-instance v1, Ljava/util/HashSet;

    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    :cond_21
    :goto_21
    monitor-exit v0

    return-object v1

    .line 7
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_1a

    throw v1
.end method

.method public final zzb()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/play/core/splitinstall/zzbe;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/zzbe;->zze()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "modules_to_uninstall_if_emulated"

    .line 3
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public final zzc(Ljava/util/Collection;)V
    .registers 6

    .line 1
    const-class v0, Lcom/google/android/play/core/splitinstall/zzbe;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/zzbe;->zza()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    .line 2
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_38

    or-int/2addr v1, v3

    goto :goto_11

    :cond_23
    if-eqz v1, :cond_36

    .line 5
    :try_start_25
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/zzbe;->zze()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "modules_to_uninstall_if_emulated"

    .line 7
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_38

    .line 9
    :catch_36
    :cond_36
    :try_start_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public final zzd(Ljava/util/Collection;)V
    .registers 8

    .line 1
    const-class v0, Lcom/google/android/play/core/splitinstall/zzbe;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/zzbe;->zza()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    .line 2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v3, 0x1

    goto :goto_11

    .line 5
    :cond_25
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_3e

    goto :goto_11

    :cond_29
    if-eqz v3, :cond_3c

    .line 6
    :try_start_2b
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/zzbe;->zze()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "modules_to_uninstall_if_emulated"

    .line 8
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3c} :catch_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    .line 10
    :catch_3c
    :cond_3c
    :try_start_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw p1
.end method
