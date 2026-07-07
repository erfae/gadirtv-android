.class final Lcom/google/android/gms/internal/ads/zzazz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzehe:Lcom/google/android/gms/internal/ads/zzazu;

.field private final synthetic zzehf:Lcom/google/android/gms/internal/ads/zzazs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazx;Lcom/google/android/gms/internal/ads/zzazu;Lcom/google/android/gms/internal/ads/zzazs;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzehe:Lcom/google/android/gms/internal/ads/zzazu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzehf:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzehe:Lcom/google/android/gms/internal/ads/zzazu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazu;->zzh(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzehf:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazs;->run()V

    return-void
.end method
