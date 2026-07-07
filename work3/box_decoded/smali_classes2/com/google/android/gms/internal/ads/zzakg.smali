.class final Lcom/google/android/gms/internal/ads/zzakg;
.super Lcom/google/android/gms/internal/ads/zzbfz;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final synthetic zzdia:Lcom/google/android/gms/internal/ads/zzaka;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaka;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzdia:Lcom/google/android/gms/internal/ads/zzaka;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaka;Lcom/google/android/gms/internal/ads/zzake;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzakg;-><init>(Lcom/google/android/gms/internal/ads/zzaka;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbfy;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzdia:Lcom/google/android/gms/internal/ads/zzaka;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaka;->zza(Lcom/google/android/gms/internal/ads/zzaka;)Lcom/google/android/gms/internal/ads/zzakr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzdia:Lcom/google/android/gms/internal/ads/zzaka;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaka;->zza(Lcom/google/android/gms/internal/ads/zzaka;)Lcom/google/android/gms/internal/ads/zzakr;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakr;->zztt()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbfy;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzdia:Lcom/google/android/gms/internal/ads/zzaka;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbfy;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzakn;->zzg(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbfy;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzdia:Lcom/google/android/gms/internal/ads/zzaka;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbfy;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzakn;->zzg(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
