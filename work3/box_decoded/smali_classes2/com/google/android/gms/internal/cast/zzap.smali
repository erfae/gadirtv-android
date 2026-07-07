.class final Lcom/google/android/gms/internal/cast/zzap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;


# instance fields
.field final synthetic zzng:Lcom/google/android/gms/internal/cast/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zza(Lcom/google/android/gms/internal/cast/zzam;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzb(Lcom/google/android/gms/internal/cast/zzam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zze(Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zze(Lcom/google/android/gms/internal/cast/zzam;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cast/zzar;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cast/zzar;-><init>(Lcom/google/android/gms/internal/cast/zzap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbi()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zza(Lcom/google/android/gms/internal/cast/zzam;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzb(Lcom/google/android/gms/internal/cast/zzam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zze(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zze(Lcom/google/android/gms/internal/cast/zzam;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cast/zzao;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cast/zzao;-><init>(Lcom/google/android/gms/internal/cast/zzap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
