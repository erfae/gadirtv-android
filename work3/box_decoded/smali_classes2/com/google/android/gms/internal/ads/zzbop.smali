.class final Lcom/google/android/gms/internal/ads/zzbop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfve:Lcom/google/android/gms/internal/ads/zzdyo;

.field private final synthetic zzfvf:Lcom/google/android/gms/internal/ads/zzboj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzdyo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbop;->zzfvf:Lcom/google/android/gms/internal/ads/zzboj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbop;->zzfve:Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboc;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbop;->zzfvf:Lcom/google/android/gms/internal/ads/zzboj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboj;->zza(Lcom/google/android/gms/internal/ads/zzboj;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbop;->zzfve:Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyo;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbop;->zzfvf:Lcom/google/android/gms/internal/ads/zzboj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboj;->zza(Lcom/google/android/gms/internal/ads/zzboj;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbop;->zzfve:Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyo;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
