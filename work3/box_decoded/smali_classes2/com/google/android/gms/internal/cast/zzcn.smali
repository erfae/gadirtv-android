.class public abstract Lcom/google/android/gms/internal/cast/zzcn;
.super Lcom/google/android/gms/internal/cast/zzcp;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzcp<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzzt:Lcom/google/android/gms/internal/cast/zzch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzch;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcp;-><init>(Lcom/google/android/gms/internal/cast/zzch;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzcm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzcm;-><init>(Lcom/google/android/gms/internal/cast/zzcn;Lcom/google/android/gms/internal/cast/zzch;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzcn;->zzaaq:Lcom/google/android/gms/cast/internal/zzam;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    .line 4
    new-instance v6, Lcom/google/android/gms/internal/cast/zzct;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzct;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v6
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcn;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p1

    return-object p1
.end method
