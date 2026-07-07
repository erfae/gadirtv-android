.class final Lcom/google/android/play/core/appupdate/zzw;
.super Lcom/google/android/play/core/appupdate/AppUpdateOptions;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:I

.field private final zzb:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    return-void
.end method


# virtual methods
.method public final allowAssetPackDeletion()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    return v0
.end method

.method public final appUpdateType()I
    .registers 2
    .annotation build Lcom/google/android/play/core/install/model/AppUpdateType;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 2
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    iget v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    move-result v3

    if-ne v1, v3, :cond_1c

    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->allowAssetPackDeletion()Z

    move-result p1

    if-ne v1, p1, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_10

    const/16 v1, 0x4d5

    goto :goto_12

    :cond_10
    const/16 v1, 0x4cf

    :goto_12
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzw;->zza:I

    iget-boolean v1, p0, Lcom/google/android/play/core/appupdate/zzw;->zzb:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AppUpdateOptions{appUpdateType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", allowAssetPackDeletion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
