.class final Lcom/google/android/play/core/splitinstall/testing/zza;
.super Lcom/google/android/play/core/splitinstall/testing/zzs;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/testing/zzs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/play/core/splitinstall/testing/zzs;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/zzs;
    .registers 3

    const-string v0, "Null splitInstallErrorCodeByModule"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/play/core/splitinstall/testing/zzt;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zzc;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/splitinstall/testing/zzc;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    return-object v0

    .line 3
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: splitInstallErrorCodeByModule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"splitInstallErrorCodeByModule\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
