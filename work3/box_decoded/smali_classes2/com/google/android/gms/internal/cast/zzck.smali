.class final Lcom/google/android/gms/internal/cast/zzck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzaam:J

.field private final synthetic zzzt:Lcom/google/android/gms/internal/cast/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzch;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzck;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    iput-wide p2, p0, Lcom/google/android/gms/internal/cast/zzck;->zzaam:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3

    .line 2
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzck;->zzzt:Lcom/google/android/gms/internal/cast/zzch;

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzck;->zzaam:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzk;->zzb(JI)V

    :cond_0
    return-void
.end method
