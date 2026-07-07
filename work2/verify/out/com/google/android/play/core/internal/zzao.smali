.class final Lcom/google/android/play/core/internal/zzao;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final synthetic zza:Landroid/os/IBinder;

.field public final synthetic zzb:Lcom/google/android/play/core/internal/zzar;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzar;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Lcom/google/android/play/core/internal/zzar;

    iput-object p2, p0, Lcom/google/android/play/core/internal/zzao;->zza:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzas;->zzg(Lcom/google/android/play/core/internal/zzas;)Lcom/google/android/play/core/internal/zzan;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/internal/zzao;->zza:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/internal/zzan;->zza(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/zzas;->zzl(Lcom/google/android/play/core/internal/zzas;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzas;->zzo(Lcom/google/android/play/core/internal/zzas;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzas;->zzk(Lcom/google/android/play/core/internal/zzas;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzas;->zzh(Lcom/google/android/play/core/internal/zzas;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2d

    :cond_3d
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzao;->zzb:Lcom/google/android/play/core/internal/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/internal/zzar;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzas;->zzh(Lcom/google/android/play/core/internal/zzas;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
