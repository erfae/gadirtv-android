.class public abstract Lcom/google/android/gms/internal/cast/zzco;
.super Lcom/google/android/gms/internal/cast/zzcp;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzcp<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaap:Lcom/google/android/gms/cast/games/GameManagerClient;

.field final synthetic zzzt:Lcom/google/android/gms/internal/cast/zzch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzch;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzco;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcp;-><init>(Lcom/google/android/gms/internal/cast/zzch;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzco;->zzaap:Lcom/google/android/gms/cast/games/GameManagerClient;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/cast/zzcr;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzcr;-><init>(Lcom/google/android/gms/internal/cast/zzco;Lcom/google/android/gms/internal/cast/zzch;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzco;->zzaaq:Lcom/google/android/gms/cast/internal/zzam;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzco;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzco;->zzaap:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object p0
.end method

.method public static zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzcq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzcq;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzco;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p1

    return-object p1
.end method
