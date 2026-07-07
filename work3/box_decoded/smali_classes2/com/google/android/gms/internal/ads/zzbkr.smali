.class public final Lcom/google/android/gms/internal/ads/zzbkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final zzbpw:Lcom/google/android/gms/common/util/Clock;

.field private zzbvu:Z

.field private zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzfqu:Lcom/google/android/gms/internal/ads/zzbkg;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private zzfqz:Lcom/google/android/gms/internal/ads/zzbkk;

.field private zzfrs:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbkg;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzbvu:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfrs:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbkk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqz:Lcom/google/android/gms/internal/ads/zzbkk;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqx:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqu:Lcom/google/android/gms/internal/ads/zzbkg;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzbpw:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzaij()V
    .locals 3

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqu:Lcom/google/android/gms/internal/ads/zzbkg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqz:Lcom/google/android/gms/internal/ads/zzbkk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkg;->zza(Lcom/google/android/gms/internal/ads/zzbkk;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqx:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbku;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbku;-><init>(Lcom/google/android/gms/internal/ads/zzbkr;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzbvu:Z

    return-void
.end method

.method public final enable()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzbvu:Z

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkr;->zzaij()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqv;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqz:Lcom/google/android/gms/internal/ads/zzbkk;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfrs:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzbqz:Z

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbkk;->zzbqz:Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqz:Lcom/google/android/gms/internal/ads/zzbkk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzbpw:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbkk;->timestamp:J

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfqz:Lcom/google/android/gms/internal/ads/zzbkk;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbkk;->zzfrj:Lcom/google/android/gms/internal/ads/zzqv;

    .line 19
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzbvu:Z

    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkr;->zzaij()V

    :cond_1
    return-void
.end method

.method public final zzbe(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzfrs:Z

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbdv;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    return-void
.end method

.method final synthetic zzi(Lorg/json/JSONObject;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkr;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
