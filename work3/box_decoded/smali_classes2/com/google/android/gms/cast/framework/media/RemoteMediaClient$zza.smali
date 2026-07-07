.class final Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private zzjb:J

.field private zzkv:Lcom/google/android/gms/internal/cast/zzo;

.field final synthetic zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzjb:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/cast/zzo;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 6
    iget-object p5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz p5, :cond_0

    .line 9
    invoke-interface {p5, p1, p2}, Lcom/google/android/gms/internal/cast/zzo;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/cast/framework/media/zzav;

    invoke-direct {p2, p0, p3, p4}, Lcom/google/android/gms/cast/framework/media/zzav;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;J)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No GoogleApiClient available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzv()J
    .locals 4

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzjb:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzjb:J

    return-wide v0
.end method
