.class public final Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/zzd;->zza(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/zza;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/assetpacks/zza;->zza()Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method
