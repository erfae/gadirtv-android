.class public final Lcom/google/android/gms/internal/ads/zzpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpg;


# instance fields
.field private started:Z

.field private zzafg:Lcom/google/android/gms/internal/ads/zzhv;

.field private zzbki:J

.field private zzbkj:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhv;->zzahx:Lcom/google/android/gms/internal/ads/zzhv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzafg:Lcom/google/android/gms/internal/ads/zzhv;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkj:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpo;->zzfz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpo;->zzel(J)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpg;)V
    .locals 2

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzfz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpo;->zzel(J)V

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzfs()Lcom/google/android/gms/internal/ads/zzhv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzafg:Lcom/google/android/gms/internal/ads/zzhv;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhv;)Lcom/google/android/gms/internal/ads/zzhv;
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpo;->zzfz()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpo;->zzel(J)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzafg:Lcom/google/android/gms/internal/ads/zzhv;

    return-object p1
.end method

.method public final zzel(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbki:J

    .line 13
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    if-eqz p1, :cond_0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkj:J

    :cond_0
    return-void
.end method

.method public final zzfs()Lcom/google/android/gms/internal/ads/zzhv;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzafg:Lcom/google/android/gms/internal/ads/zzhv;

    return-object v0
.end method

.method public final zzfz()J
    .locals 6

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbki:J

    .line 20
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpo;->started:Z

    if-eqz v2, :cond_1

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzbkj:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzafg:Lcom/google/android/gms/internal/ads/zzhv;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzhv;->zzahy:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhb;->zzdn(J)J

    move-result-wide v2

    goto :goto_0

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzafg:Lcom/google/android/gms/internal/ads/zzhv;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzhv;->zzdu(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method
