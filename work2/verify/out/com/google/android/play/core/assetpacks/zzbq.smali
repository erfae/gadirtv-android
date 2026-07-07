.class final Lcom/google/android/play/core/assetpacks/zzbq;
.super Lcom/google/android/play/core/assetpacks/zzet;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:I

.field private final zzd:Z

.field private final zze:Z

.field private final zzf:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;JIZZ[B)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzet;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzb:J

    iput p4, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzc:I

    iput-boolean p5, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    iput-boolean p6, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zze:Z

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/zzet;

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 2
    check-cast p1, Lcom/google/android/play/core/assetpacks/zzet;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zzc()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_58

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    :goto_20
    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzb:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zzb()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_58

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzc:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zza()I

    move-result v3

    if-ne v1, v3, :cond_58

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zze()Z

    move-result v3

    if-ne v1, v3, :cond_58

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zze:Z

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zzd()Z

    move-result v3

    if-ne v1, v3, :cond_58

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    .line 8
    instance-of v3, p1, Lcom/google/android/play/core/assetpacks/zzbq;

    if-eqz v3, :cond_4d

    check-cast p1, Lcom/google/android/play/core/assetpacks/zzbq;

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    goto :goto_51

    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzet;->zzf()[B

    move-result-object p1

    :goto_51
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_58

    return v0

    :cond_58
    return v2
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 2
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 3
    :goto_a
    iget-wide v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzb:J

    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    xor-long/2addr v1, v4

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzc:I

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    const/16 v2, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v1, :cond_2c

    const/16 v1, 0x4d5

    goto :goto_2e

    :cond_2c
    const/16 v1, 0x4cf

    :goto_2e
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zze:Z

    if-eq v5, v1, :cond_36

    goto :goto_38

    :cond_36
    const/16 v2, 0x4cf

    :goto_38
    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzb:J

    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzc:I

    iget-boolean v4, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    iget-boolean v5, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zze:Z

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x7e

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "ZipEntry{name="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", compressionMethod="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isPartial="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEndOfArchive="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", headerBytes="

    const-string v1, "}"

    .line 2
    invoke-static {v9, v0, v6, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzc:I

    return v0
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzb:J

    return-wide v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zze:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzd:Z

    return v0
.end method

.method public final zzf()[B
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbq;->zzf:[B

    return-object v0
.end method
