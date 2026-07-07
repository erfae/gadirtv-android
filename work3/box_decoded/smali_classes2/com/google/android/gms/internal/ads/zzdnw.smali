.class final synthetic Lcom/google/android/gms/internal/ads/zzdnw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;


# instance fields
.field private final zzhjb:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzhjc:Lcom/google/android/gms/internal/ads/zzcqo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhjb:Lcom/google/android/gms/internal/ads/zzdrz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhjc:Lcom/google/android/gms/internal/ads/zzcqo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhjb:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhjc:Lcom/google/android/gms/internal/ads/zzcqo;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdk;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zzabw()Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhq:Z

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdrz;->zzeo(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcqv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeq;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeq;->zzadk()Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    sget v7, Lcom/google/android/gms/internal/ads/zzcql;->zzgqc:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcqv;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzcqo;->zza(Lcom/google/android/gms/internal/ads/zzcqv;)V

    return-void
.end method
