.class final Lcom/google/android/gms/cast/zzu;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/cast/zzdg;",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzag:Ljava/lang/String;

.field private final synthetic zzbq:I

.field private final synthetic zzbr:Landroid/app/PendingIntent;

.field private final synthetic zzbs:Lcom/google/android/gms/cast/CastDevice;

.field final synthetic zzbt:Lcom/google/android/gms/cast/CastRemoteDisplayClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;ILandroid/app/PendingIntent;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzu;->zzbt:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    iput p2, p0, Lcom/google/android/gms/cast/zzu;->zzbq:I

    iput-object p3, p0, Lcom/google/android/gms/cast/zzu;->zzbr:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzu;->zzbs:Lcom/google/android/gms/cast/CastDevice;

    iput-object p5, p0, Lcom/google/android/gms/cast/zzu;->zzag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/cast/zzdg;

    .line 3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget v0, p0, Lcom/google/android/gms/cast/zzu;->zzbq:I

    const-string v1, "configuration"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    new-instance v1, Lcom/google/android/gms/cast/zzt;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/cast/zzt;-><init>(Lcom/google/android/gms/cast/zzu;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/cast/zzdg;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdg;->getService()Landroid/os/IInterface;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cast/zzdn;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzu;->zzbr:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/google/android/gms/cast/zzu;->zzbs:Lcom/google/android/gms/cast/CastDevice;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/zzu;->zzag:Ljava/lang/String;

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdl;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
