.class final synthetic Lcom/google/android/gms/internal/ads/zzbkb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzbkc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbkc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfqn:Lcom/google/android/gms/internal/ads/zzbkc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfqn:Lcom/google/android/gms/internal/ads/zzbkc;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbkc;->zzfqo:Lcom/google/android/gms/internal/ads/zzbjz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzb(Lcom/google/android/gms/internal/ads/zzbjz;)Lcom/google/android/gms/internal/ads/zzbki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzaig()V

    return-void
.end method
