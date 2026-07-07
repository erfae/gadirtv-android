.class final Lcom/google/android/gms/internal/ads/zzdpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzhky:Lcom/google/android/gms/internal/ads/zzdph;

.field private zzhkz:I

.field private zzhla:I

.field private zzhlb:I

.field private zzhlc:I

.field private zzhld:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdph;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhky:Lcom/google/android/gms/internal/ads/zzdph;

    return-void
.end method


# virtual methods
.method public final zzavk()V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhlb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhlb:I

    return-void
.end method

.method public final zzavl()V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhlc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhlc:I

    return-void
.end method

.method public final zzavm()V
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhkz:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhkz:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhky:Lcom/google/android/gms/internal/ads/zzdph;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdph;->zzhkw:Z

    return-void
.end method

.method public final zzavn()V
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhla:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhla:I

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhky:Lcom/google/android/gms/internal/ads/zzdph;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdph;->zzhkx:Z

    return-void
.end method

.method public final zzavo()V
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhld:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhld:I

    return-void
.end method

.method public final zzavp()Lcom/google/android/gms/internal/ads/zzdph;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhky:Lcom/google/android/gms/internal/ads/zzdph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdph;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdph;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhky:Lcom/google/android/gms/internal/ads/zzdph;

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdph;->zzhkw:Z

    .line 18
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdph;->zzhkx:Z

    return-object v0
.end method

.method public final zzavq()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tPool does not exist: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhlb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNew pools created: "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhkz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPools removed: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhla:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tEntries added: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhld:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNo entries retrieved: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpi;->zzhlc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
