.class final Lcom/google/android/gms/cast/framework/media/zzx;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzif:[Lcom/google/android/gms/cast/MediaQueueItem;

.field private final synthetic zzig:I

.field private final synthetic zzih:I

.field private final synthetic zzii:J

.field private final synthetic zzij:Lorg/json/JSONObject;

.field private final synthetic zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzif:[Lcom/google/android/gms/cast/MediaQueueItem;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzig:I

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzih:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzii:J

    iput-object p7, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzij:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzif:[Lcom/google/android/gms/cast/MediaQueueItem;

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzig:I

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzih:I

    iget-wide v6, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzii:J

    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/zzx;->zzij:Lorg/json/JSONObject;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J

    return-void
.end method
