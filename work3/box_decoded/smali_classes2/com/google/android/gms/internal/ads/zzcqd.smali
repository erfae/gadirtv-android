.class final Lcom/google/android/gms/internal/ads/zzcqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgpn:Z

.field final synthetic zzgpo:Lcom/google/android/gms/internal/ads/zzcqe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqe;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpo:Lcom/google/android/gms/internal/ads/zzcqe;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpo:Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqe;->zza(Lcom/google/android/gms/internal/ads/zzcqe;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpo:Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqe;->zzb(Lcom/google/android/gms/internal/ads/zzcqe;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzue$zzo$zzc;

    move-result-object v6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpo:Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqe;->zzc(Lcom/google/android/gms/internal/ads/zzcqe;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzue$zzm;

    move-result-object v5

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpo:Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqe;->zza(Lcom/google/android/gms/internal/ads/zzcqe;)Lcom/google/android/gms/internal/ads/zzcpr;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqg;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgpn:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcqg;-><init>(Lcom/google/android/gms/internal/ads/zzcqd;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzue$zzm;Lcom/google/android/gms/internal/ads/zzue$zzo$zzc;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcpr;->zza(Lcom/google/android/gms/internal/ads/zzdqv;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get signals bundle"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    return-void
.end method
