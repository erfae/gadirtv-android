.class final synthetic Lcom/google/android/gms/internal/ads/zzckx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzgkr:Lcom/google/android/gms/internal/ads/zzcky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcky;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzgkr:Lcom/google/android/gms/internal/ads/zzcky;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzdha:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzgkr:Lcom/google/android/gms/internal/ads/zzcky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzdha:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcky;->zzeff:Lcom/google/android/gms/internal/ads/zzaze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaze;->zzeo(Ljava/lang/String;)V

    return-void
.end method
