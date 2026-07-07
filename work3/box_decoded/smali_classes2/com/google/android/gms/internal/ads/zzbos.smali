.class public final Lcom/google/android/gms/internal/ads/zzbos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzchy:Ljava/lang/String;

.field private final zzext:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzfps:Lcom/google/android/gms/internal/ads/zzdmu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 5
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzchy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzake()Lcom/google/android/gms/internal/ads/zzdnj;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    return-object v0
.end method

.method public final zzakf()Lcom/google/android/gms/internal/ads/zzdmu;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfps:Lcom/google/android/gms/internal/ads/zzdmu;

    return-object v0
.end method

.method public final zzakg()Lcom/google/android/gms/internal/ads/zzdmz;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    return-object v0
.end method

.method public final zzakh()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzchy:Ljava/lang/String;

    return-object v0
.end method
