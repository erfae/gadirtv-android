.class final Lcom/google/android/gms/internal/cast/zzdv;
.super Lcom/google/android/gms/internal/cast/zzdw;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final synthetic zzafd:Lcom/google/android/gms/internal/cast/zzds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdw;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzds;->zza(Lcom/google/android/gms/internal/cast/zzds;)I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    iget-object p2, p1, Lcom/google/android/gms/internal/cast/zzds;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzdt;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzds;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzds;->zzb(Lcom/google/android/gms/internal/cast/zzds;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzds;->zzc(Lcom/google/android/gms/internal/cast/zzds;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzds;->zzc(Lcom/google/android/gms/internal/cast/zzds;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdv;->zzafd:Lcom/google/android/gms/internal/cast/zzds;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzds;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
