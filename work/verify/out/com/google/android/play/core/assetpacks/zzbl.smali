.class final Lcom/google/android/play/core/assetpacks/zzbl;
.super Lcom/google/android/play/core/assetpacks/AssetLocation;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/AssetLocation;-><init>()V

    const-string v0, "Null path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzb:J

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzc:J

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
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/AssetLocation;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 2
    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetLocation;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetLocation;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzb:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetLocation;->offset()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzc:J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetLocation;->size()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public final hashCode()I
    .registers 10

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzb:J

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzc:J

    const v5, 0xf4243

    xor-int/2addr v0, v5

    mul-int v0, v0, v5

    const/16 v6, 0x20

    ushr-long v7, v1, v6

    xor-long/2addr v1, v7

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v5

    ushr-long v1, v3, v6

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final offset()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzb:J

    return-wide v0
.end method

.method public final path()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final size()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzc:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zza:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzb:J

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbl;->zzc:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "AssetLocation{path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", offset="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
