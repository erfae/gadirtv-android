.class final Lcom/google/android/play/core/review/zzc;
.super Landroid/os/ResultReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/tasks/zzi;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/play/core/tasks/zzi;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/play/core/review/zzc;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/play/core/review/zzc;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
