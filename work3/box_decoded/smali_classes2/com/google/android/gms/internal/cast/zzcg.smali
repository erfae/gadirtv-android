.class final Lcom/google/android/gms/internal/cast/zzcg;
.super Lcom/google/android/gms/internal/cast/zzco;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field final synthetic zzzt:Lcom/google/android/gms/internal/cast/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzch;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzco;-><init>(Lcom/google/android/gms/internal/cast/zzch;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzch;->zzb(Lcom/google/android/gms/internal/cast/zzch;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzch;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zzk;->getNamespace()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/cast/zzcj;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/cast/zzcj;-><init>(Lcom/google/android/gms/internal/cast/zzcg;)V

    .line 5
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzch;->zzc(Lcom/google/android/gms/internal/cast/zzch;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzch;->zzd(Lcom/google/android/gms/internal/cast/zzch;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    const/16 v2, 0x44c

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzcp;->zzaaq:Lcom/google/android/gms/cast/internal/zzam;

    .line 17
    invoke-static {v1, v0, v2, v0, v3}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzch;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzam;)V

    return-void

    .line 9
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcp;->zzaaq:Lcom/google/android/gms/cast/internal/zzam;

    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    .line 11
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/zzam;->zza(JILjava/lang/Object;)V

    return-void
.end method
