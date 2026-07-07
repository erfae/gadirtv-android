.class final Lcom/google/android/gms/internal/cast/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zznf:Lcom/google/android/gms/internal/cast/zzap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zza(Lcom/google/android/gms/internal/cast/zzam;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzb(Lcom/google/android/gms/internal/cast/zzam;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzc(Lcom/google/android/gms/internal/cast/zzam;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzc(Lcom/google/android/gms/internal/cast/zzam;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzao;->zznf:Lcom/google/android/gms/internal/cast/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzap;->zzng:Lcom/google/android/gms/internal/cast/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzam;->zzd(Lcom/google/android/gms/internal/cast/zzam;)V

    :cond_1
    return-void
.end method
