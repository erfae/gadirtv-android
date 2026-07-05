.class public abstract Lcom/google/android/play/core/internal/zzah;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/play/core/tasks/zzi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzi;)V
    .registers 2
    .param p1    # Lcom/google/android/play/core/tasks/zzi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzah;->zza()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/internal/zzah;->zzc(Ljava/lang/Exception;)V

    return-void
.end method

.method public abstract zza()V
.end method

.method public final zzb()Lcom/google/android/play/core/tasks/zzi;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-object v0
.end method

.method public final zzc(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    :cond_7
    return-void
.end method
