.class final Lcom/google/android/gms/internal/ads/zzbae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzeia:Landroid/media/MediaPlayer;

.field private final synthetic zzeib:Lcom/google/android/gms/internal/ads/zzbac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbac;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeia:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeia:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;Landroid/media/MediaPlayer;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zzfb()V

    :cond_0
    return-void
.end method
