.class final Lcom/google/android/gms/cast/framework/media/zzak;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzij:Lorg/json/JSONObject;

.field private final synthetic zziu:I

.field private final synthetic zziv:I

.field private final synthetic zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;IILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zziu:I

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zziv:I

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzij:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzal;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zziu:I

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zziv:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zziv:I

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "Invalid request: Invalid newIndex %d."

    .line 6
    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    if-le v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzsr:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzah;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzjc:Lcom/google/android/gms/cast/internal/zzam;

    new-array v3, v3, [I

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zziu:I

    aput v5, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzak;->zzij:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzam;[IILorg/json/JSONObject;)J

    return-void
.end method
