.class final Lcom/google/android/play/core/appupdate/zzd;
.super Landroid/os/ResultReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/tasks/zzi;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/play/core/tasks/zzi;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void

    :cond_10
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, -0x1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
