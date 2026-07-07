.class final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzeib:Lcom/google/android/gms/internal/ads/zzbac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbac;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeib:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzbam;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->onPaused()V

    :cond_0
    return-void
.end method
