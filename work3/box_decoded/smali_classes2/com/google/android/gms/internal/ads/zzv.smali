.class final Lcom/google/android/gms/internal/ads/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final zzah:Lcom/google/android/gms/internal/ads/zzaa;

.field private final zzai:Lcom/google/android/gms/internal/ads/zzaj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzv;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->isCanceled()Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaj;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaj;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaj;->zzbr:Lcom/google/android/gms/internal/ads/zzao;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zzb(Lcom/google/android/gms/internal/ads/zzao;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzai:Lcom/google/android/gms/internal/ads/zzaj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zzc(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzah:Lcom/google/android/gms/internal/ads/zzaa;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaa;->zzd(Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
