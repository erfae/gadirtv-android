.class public abstract Lcom/google/android/gms/internal/ads/zzbap;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbi;


# instance fields
.field protected final zzeih:Lcom/google/android/gms/internal/ads/zzbaz;

.field protected final zzeii:Lcom/google/android/gms/internal/ads/zzbbj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzeih:Lcom/google/android/gms/internal/ads/zzbaz;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbap;->zzeii:Lcom/google/android/gms/internal/ads/zzbbj;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getTotalBytes()J
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbam;)V
.end method

.method public zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public zzdl(I)V
    .locals 0

    return-void
.end method

.method public zzdm(I)V
    .locals 0

    return-void
.end method

.method public zzdn(I)V
    .locals 0

    return-void
.end method

.method public zzdo(I)V
    .locals 0

    return-void
.end method

.method public zzdp(I)V
    .locals 0

    return-void
.end method

.method public abstract zzna()J
.end method

.method public abstract zzzk()Ljava/lang/String;
.end method

.method public abstract zzzo()J
.end method

.method public abstract zzzp()I
.end method

.method public abstract zzzq()V
.end method
