.class public final Lcom/google/android/gms/internal/ads/zzcke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbry;
.implements Lcom/google/android/gms/internal/ads/zzbsm;
.implements Lcom/google/android/gms/internal/ads/zzbvz;
.implements Lcom/google/android/gms/internal/ads/zzva;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

.field private final zzdgz:Lcom/google/android/gms/internal/ads/zzcqo;

.field private final zzext:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgka:Lcom/google/android/gms/internal/ads/zzdoa;

.field private zzgkb:Ljava/lang/Boolean;

.field private final zzgkc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdoa;Lcom/google/android/gms/internal/ads/zzckq;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcqo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgka:Lcom/google/android/gms/internal/ads/zzdoa;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzdgz:Lcom/google/android/gms/internal/ads/zzcqo;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcxw:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkc:Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzckp;)V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhq:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqe()Ljava/lang/String;

    move-result-object v5

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcqv;

    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/internal/ads/zzcql;->zzgqc:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcqv;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzdgz:Lcom/google/android/gms/internal/ads/zzcqo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqo;->zza(Lcom/google/android/gms/internal/ads/zzcqv;)V

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void
.end method

.method private final zzapz()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkb:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkb:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcqf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcke;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzba(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcke;->zzf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkb:Ljava/lang/Boolean;

    .line 72
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static zzf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzku()Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object p1

    const-string v1, "CsiActionsListener.isPatternMatched"

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private final zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckq;->zzaqg()Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zza(Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzc(Lcom/google/android/gms/internal/ads/zzdmu;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    const-string v1, "action"

    .line 84
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgy:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgy:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhq:Z

    if-eqz p1, :cond_2

    .line 89
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "online"

    goto :goto_0

    :cond_1
    const-string p1, "offline"

    :goto_0
    const-string v1, "device_connectivity"

    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_timestamp"

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    const-string p1, "offline_ad"

    const-string v1, "1"

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhq:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zza(Lcom/google/android/gms/internal/ads/zzckp;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcke;->zzapz()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhq:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zza(Lcom/google/android/gms/internal/ads/zzckp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcai;)V
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcai;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcai;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void
.end method

.method public final zzakm()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcke;->zzapz()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_impression"

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void
.end method

.method public final zzako()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcke;->zzapz()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_shown"

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void
.end method

.method public final zzaky()V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "blocked"

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 5

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgkc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcke;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "adapter"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 32
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    .line 33
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgs:Ljava/lang/String;

    .line 34
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgt:Ljava/lang/String;

    const-string v4, "com.google.android.gms.ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzve;->zzcgt:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    .line 37
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgu:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgs:Ljava/lang/String;

    :cond_1
    if-ltz v1, :cond_2

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "arec"

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzgka:Lcom/google/android/gms/internal/ads/zzdoa;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdoa;->zzgr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "areec"

    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    .line 45
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void
.end method
