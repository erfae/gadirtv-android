.class final synthetic Lcom/google/android/gms/internal/ads/zzbiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfov:Lcom/google/android/gms/internal/ads/zzbiu;

.field private final zzfow:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbiu;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zzfov:Lcom/google/android/gms/internal/ads/zzbiu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zzfow:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zzfov:Lcom/google/android/gms/internal/ads/zzbiu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zzfow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbiu;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method
