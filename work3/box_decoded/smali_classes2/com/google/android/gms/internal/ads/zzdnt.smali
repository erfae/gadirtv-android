.class final synthetic Lcom/google/android/gms/internal/ads/zzdnt;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhjb:Lcom/google/android/gms/internal/ads/zzdrz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhjc:Lcom/google/android/gms/internal/ads/zzcqo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhjb:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnt;->zzhjc:Lcom/google/android/gms/internal/ads/zzcqo;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdk;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzahc;->zza(Lcom/google/android/gms/internal/ads/zzbex;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zzabw()Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhq:Z

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdrz;->zzeo(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcqv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbeq;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeq;->zzadk()Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbex;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbex;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    sget p1, Lcom/google/android/gms/internal/ads/zzcql;->zzgqc:I

    goto :goto_0

    .line 15
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzcql;->zzgqb:I

    :goto_0
    move v7, p1

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcqv;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzcqo;->zza(Lcom/google/android/gms/internal/ads/zzcqv;)V

    return-void
.end method
