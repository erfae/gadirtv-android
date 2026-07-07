.class final Lcom/google/android/gms/internal/ads/zzms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbei:Lcom/google/android/gms/internal/ads/zzmo;

.field private final synthetic zzbej:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmo;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbej:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbei:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzmo;->zze(Lcom/google/android/gms/internal/ads/zzmo;)Lcom/google/android/gms/internal/ads/zzmz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbej:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(Ljava/io/IOException;)V

    return-void
.end method
