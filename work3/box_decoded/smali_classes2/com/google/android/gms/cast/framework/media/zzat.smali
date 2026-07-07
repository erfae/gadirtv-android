.class final Lcom/google/android/gms/cast/framework/media/zzat;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzij:Lorg/json/JSONObject;

.field private final synthetic zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final synthetic zztg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-boolean p2, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zztg:Z

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzij:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zztg:Z

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzij:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;ZLorg/json/JSONObject;)J

    return-void
.end method
