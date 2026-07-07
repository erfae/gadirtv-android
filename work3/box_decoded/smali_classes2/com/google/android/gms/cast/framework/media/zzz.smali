.class final Lcom/google/android/gms/cast/framework/media/zzz;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzii:J

.field private final synthetic zzij:Lorg/json/JSONObject;

.field private final synthetic zzil:Lcom/google/android/gms/cast/MediaQueueItem;

.field private final synthetic zzim:I

.field private final synthetic zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzil:Lcom/google/android/gms/cast/MediaQueueItem;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzim:I

    iput-wide p4, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzii:J

    iput-object p6, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzij:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzil:Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzim:I

    iget-wide v7, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzii:J

    iget-object v9, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzij:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J

    return-void
.end method
