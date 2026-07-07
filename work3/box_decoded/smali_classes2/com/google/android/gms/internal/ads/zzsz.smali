.class final Lcom/google/android/gms/internal/ads/zzsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrl;


# instance fields
.field private final synthetic zzbup:Lcom/google/android/gms/internal/ads/zzsx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzb(Lcom/google/android/gms/internal/ads/zzsx;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzbup:Lcom/google/android/gms/internal/ads/zzsx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zza(Lcom/google/android/gms/internal/ads/zzsx;)V

    return-void
.end method
