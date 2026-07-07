.class public final Lcom/google/android/gms/internal/ads/zzcha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaij;


# instance fields
.field private final zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

.field private final zzgic:Lcom/google/android/gms/internal/ads/zzava;

.field private final zzgid:Ljava/lang/String;

.field private final zzgie:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzdmu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzdvb:Lcom/google/android/gms/internal/ads/zzava;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzgic:Lcom/google/android/gms/internal/ads/zzava;

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzdli:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzgid:Ljava/lang/String;

    .line 5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzdlj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzgie:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzava;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzgic:Lcom/google/android/gms/internal/ads/zzava;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzava;->type:Ljava/lang/String;

    .line 15
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzava;->zzdxu:I

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 p1, 0x1

    .line 16
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzgid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzgie:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbsu;->zzb(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zztl()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsu;->onRewardedVideoStarted()V

    return-void
.end method

.method public final zztm()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcha;->zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsu;->onRewardedVideoCompleted()V

    return-void
.end method
