.class public final Lcom/google/android/gms/internal/ads/zzbjw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrz;


# instance fields
.field private final zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzfpt:Lcom/google/android/gms/internal/ads/zzdrx;

.field private final zzfpz:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzdrx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfpt:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfpz:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method


# virtual methods
.method public final zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 4

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfqa:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfpt:Lcom/google/android/gms/internal/ads/zzdrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjw;->zzfpz:Lcom/google/android/gms/internal/ads/zzdmz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdmz;->zzdlv:Ljava/util/List;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdrx;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrz;->zzj(Ljava/util/List;)V

    return-void
.end method
