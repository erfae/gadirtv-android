.class final Lcom/google/android/play/core/splitinstall/testing/zzc;
.super Lcom/google/android/play/core/splitinstall/testing/zzt;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/testing/zzt;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzb:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/splitinstall/testing/zzt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 2
    check-cast p1, Lcom/google/android/play/core/splitinstall/testing/zzt;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_16

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/testing/zzt;->zza()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/testing/zzt;->zza()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_20
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzc:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/testing/zzt;->zzb()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v0

    :cond_2d
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzb:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 2
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzb:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzc:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x51

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "LocalTestingConfig{defaultSplitInstallErrorCode="

    const-string v3, ", splitInstallErrorCodeByModule="

    .line 2
    invoke-static {v4, v2, v0, v3, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "}"

    .line 3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/play/core/splitinstall/model/SplitInstallErrorCode;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzb:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzb()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zzc:Ljava/util/Map;

    return-object v0
.end method
