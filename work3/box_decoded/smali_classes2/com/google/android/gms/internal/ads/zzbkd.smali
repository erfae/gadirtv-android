.class final synthetic Lcom/google/android/gms/internal/ads/zzbkd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqp:Lcom/google/android/gms/internal/ads/zzbke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfqp:Lcom/google/android/gms/internal/ads/zzbke;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzfqp:Lcom/google/android/gms/internal/ads/zzbke;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbke;->zzfqo:Lcom/google/android/gms/internal/ads/zzbjz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzb(Lcom/google/android/gms/internal/ads/zzbjz;)Lcom/google/android/gms/internal/ads/zzbki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzaii()V

    return-void
.end method
