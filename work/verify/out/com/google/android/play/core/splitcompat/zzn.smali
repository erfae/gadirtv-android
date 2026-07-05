.class public final synthetic Lcom/google/android/play/core/splitcompat/zzn;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/zzn;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/zzn;->zza:Landroid/content/Context;

    sget v1, Lcom/google/android/play/core/splitcompat/SplitCompat;->zza:I

    .line 1
    :try_start_4
    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/zzx;->zzc(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/zzx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/zzc;->zzg(Z)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_c} :catch_d

    return-void

    :catch_d
    const-string v0, "SplitCompat"

    const-string v1, "Failed to set broadcast receiver to always on."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
