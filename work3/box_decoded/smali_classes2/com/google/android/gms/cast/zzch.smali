.class final Lcom/google/android/gms/cast/zzch;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzie:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzij:Lorg/json/JSONObject;

.field private final synthetic zzim:I

.field private final synthetic zziq:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;[IILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzch;->zzie:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzch;->zziq:[I

    iput p4, p0, Lcom/google/android/gms/cast/zzch;->zzim:I

    iput-object p5, p0, Lcom/google/android/gms/cast/zzch;->zzij:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzch;->zzie:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/zzch;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzch;->zziq:[I

    iget v2, p0, Lcom/google/android/gms/cast/zzch;->zzim:I

    iget-object v3, p0, Lcom/google/android/gms/cast/zzch;->zzij:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;[IILorg/json/JSONObject;)J

    return-void
.end method
