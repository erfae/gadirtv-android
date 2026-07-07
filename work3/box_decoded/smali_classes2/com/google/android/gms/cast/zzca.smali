.class final Lcom/google/android/gms/cast/zzca;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzie:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzif:[Lcom/google/android/gms/cast/MediaQueueItem;

.field private final synthetic zzig:I

.field private final synthetic zzih:I

.field private final synthetic zzii:J

.field private final synthetic zzij:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzca;->zzie:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzca;->zzif:[Lcom/google/android/gms/cast/MediaQueueItem;

    iput p4, p0, Lcom/google/android/gms/cast/zzca;->zzig:I

    iput p5, p0, Lcom/google/android/gms/cast/zzca;->zzih:I

    iput-wide p6, p0, Lcom/google/android/gms/cast/zzca;->zzii:J

    iput-object p8, p0, Lcom/google/android/gms/cast/zzca;->zzij:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzca;->zzie:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzca;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzca;->zzif:[Lcom/google/android/gms/cast/MediaQueueItem;

    iget v3, p0, Lcom/google/android/gms/cast/zzca;->zzig:I

    iget v4, p0, Lcom/google/android/gms/cast/zzca;->zzih:I

    iget-wide v5, p0, Lcom/google/android/gms/cast/zzca;->zzii:J

    iget-object v7, p0, Lcom/google/android/gms/cast/zzca;->zzij:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J

    return-void
.end method
