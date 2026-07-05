.class final Lcom/google/android/play/core/appupdate/zzp;
.super Lcom/google/android/play/core/appupdate/zzn;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final synthetic zzd:Lcom/google/android/play/core/appupdate/zzq;

.field private final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzp;->zzd:Lcom/google/android/play/core/appupdate/zzq;

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/zzn;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/internal/zzag;Lcom/google/android/play/core/tasks/zzi;)V

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzp;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/appupdate/zzn;->zzc(Landroid/os/Bundle;)V

    .line 2
    sget v0, Lcom/google/android/play/core/appupdate/zzq;->$r8$clinit:I

    const-string v0, "error.code"

    const/4 v1, -0x2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 4
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    new-instance v3, Lcom/google/android/play/core/install/InstallException;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-direct {v3, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzp;->zzd:Lcom/google/android/play/core/appupdate/zzq;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzp;->zze:Ljava/lang/String;

    .line 7
    invoke-static {v1, p1, v2}, Lcom/google/android/play/core/appupdate/zzq;->zzd(Lcom/google/android/play/core/appupdate/zzq;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
