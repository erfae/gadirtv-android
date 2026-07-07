.class public final Lcom/google/android/gms/internal/ads/zzbzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field private final zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

.field private final zzfzz:Lcom/google/android/gms/internal/ads/zzbxu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbxu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzz:Lcom/google/android/gms/internal/ads/zzbxu;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->onResume()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->onUserLeaveHint()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtr;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzz:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxu;->onHide()V

    return-void
.end method

.method public final zzux()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->zzux()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzfzz:Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxu;->zzalv()V

    return-void
.end method
