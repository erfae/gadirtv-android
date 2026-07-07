.class final Lcom/google/android/gms/cast/framework/media/zzal;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zziu:I

.field private final synthetic zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final synthetic zzsz:I

.field private final synthetic zzta:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;ZIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zziu:I

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzsz:I

    iput p5, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzta:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zziu:I

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzsz:I

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzta:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;III)J

    return-void
.end method
