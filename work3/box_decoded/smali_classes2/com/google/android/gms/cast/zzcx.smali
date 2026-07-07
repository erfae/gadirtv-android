.class final Lcom/google/android/gms/cast/zzcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzam;


# instance fields
.field private final synthetic zzjg:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzjh:Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzcx;->zzjh:Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzcx;->zzjg:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 2

    .line 8
    instance-of p1, p4, Lcom/google/android/gms/cast/internal/zzak;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 9
    check-cast p4, Lcom/google/android/gms/cast/internal/zzak;

    goto :goto_0

    :cond_0
    move-object p4, p2

    .line 10
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzcx;->zzjh:Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;

    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzc;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    if-eqz p4, :cond_1

    .line 11
    iget-object p2, p4, Lcom/google/android/gms/cast/internal/zzak;->zzp:Lorg/json/JSONObject;

    :cond_1
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "RemoteMediaPlayer"

    const-string p3, "Result already set when calling onRequestCompleted"

    .line 15
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzcx;->zzjh:Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x837

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "RemoteMediaPlayer"

    const-string v0, "Result already set when calling onRequestReplaced"

    .line 5
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
