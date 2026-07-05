.class Lcom/google/android/play/core/review/zzg;
.super Lcom/google/android/play/core/internal/zzad;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final zza:Lcom/google/android/play/core/internal/zzag;

.field public final zzb:Lcom/google/android/play/core/tasks/zzi;

.field public final synthetic zzc:Lcom/google/android/play/core/review/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/internal/zzag;Lcom/google/android/play/core/tasks/zzi;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzad;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/internal/zzag;

    iput-object p3, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    iget-object p1, p1, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/internal/zzas;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    :cond_b
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
