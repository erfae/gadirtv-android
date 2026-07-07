.class final Lcom/google/android/gms/internal/ads/zzcul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzghr:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final synthetic zzgsw:J

.field private final synthetic zzgsx:Ljava/lang/String;

.field private final synthetic zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final synthetic zzgsz:Lcom/google/android/gms/internal/ads/zzcum;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcum;JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsw:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzghr:Lcom/google/android/gms/internal/ads/zzdmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcum;->zza(Lcom/google/android/gms/internal/ads/zzcum;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsw:J

    sub-long/2addr v0, v2

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsx:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhn:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzcum;->zza(Lcom/google/android/gms/internal/ads/zzcum;Ljava/lang/String;IJLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcum;->zzb(Lcom/google/android/gms/internal/ads/zzcum;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcum;->zzc(Lcom/google/android/gms/internal/ads/zzcum;)Lcom/google/android/gms/internal/ads/zzcuo;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzghr:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzcuo;->zza(Lcom/google/android/gms/internal/ads/zzdmz;Lcom/google/android/gms/internal/ads/zzdmu;ILcom/google/android/gms/internal/ads/zzcrd;J)V

    .line 6
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzczb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcum;->zzd(Lcom/google/android/gms/internal/ads/zzcum;)Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzcrg;->zza(Lcom/google/android/gms/internal/ads/zzdmu;JLcom/google/android/gms/internal/ads/zzve;)V

    :cond_1
    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 12

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcum;->zza(Lcom/google/android/gms/internal/ads/zzcum;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsw:J

    sub-long/2addr v0, v2

    .line 12
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 14
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzcuc;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 16
    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdnr;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 20
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzcme;

    if-eqz v2, :cond_4

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoi;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    .line 27
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhn:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzcum;->zza(Lcom/google/android/gms/internal/ads/zzcum;Ljava/lang/String;IJLjava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcum;->zzb(Lcom/google/android/gms/internal/ads/zzcum;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcum;->zzc(Lcom/google/android/gms/internal/ads/zzcum;)Lcom/google/android/gms/internal/ads/zzcuo;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzghr:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 30
    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzcrd;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcrd;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    move v7, v2

    move-wide v9, v0

    .line 31
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzcuo;->zza(Lcom/google/android/gms/internal/ads/zzdmz;Lcom/google/android/gms/internal/ads/zzdmu;ILcom/google/android/gms/internal/ads/zzcrd;J)V

    .line 32
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabf;->zzczb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoi;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p1

    .line 37
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    if-eq v2, v11, :cond_7

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzve;->zzcgt:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrd;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdok;->zzhjx:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzve;)V

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoi;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object p1

    .line 43
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsz:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcum;->zzd(Lcom/google/android/gms/internal/ads/zzcum;)Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcrg;->zza(Lcom/google/android/gms/internal/ads/zzdmu;JLcom/google/android/gms/internal/ads/zzve;)V

    :cond_9
    return-void
.end method
