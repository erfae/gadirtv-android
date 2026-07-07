.class final Lcom/google/android/gms/internal/ads/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public index:I

.field public final length:I

.field public zzawk:I

.field public zzawl:J

.field private final zzawm:Z

.field private final zzawn:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzawo:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzawp:I

.field private zzawq:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzpn;Lcom/google/android/gms/internal/ads/zzpn;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawo:Lcom/google/android/gms/internal/ads/zzpn;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawn:Lcom/google/android/gms/internal/ads/zzpn;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawm:Z

    const/16 p3, 0xc

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbl(I)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->length:I

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbl(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawq:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzpc;->checkState(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->index:I

    return-void
.end method


# virtual methods
.method public final zzgx()Z
    .locals 4

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->index:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->length:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjg()J

    move-result-wide v2

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjc()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawl:J

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->index:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawp:I

    if-ne v0, v2, :cond_3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawk:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawo:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzbm(I)V

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawq:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawq:I

    if-lez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjf()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzawp:I

    :cond_3
    return v1
.end method
