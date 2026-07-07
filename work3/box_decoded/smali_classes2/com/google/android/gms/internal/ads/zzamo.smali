.class final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazs;


# instance fields
.field private final synthetic zzdhe:Lcom/google/android/gms/internal/ads/zzazq;

.field private final synthetic zzdkh:Lcom/google/android/gms/internal/ads/zzalo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzazq;Lcom/google/android/gms/internal/ads/zzalo;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdhe:Lcom/google/android/gms/internal/ads/zzazq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdkh:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdhe:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzama;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzama;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdkh:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void
.end method
