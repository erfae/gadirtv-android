.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final synthetic zzns:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

.field private final synthetic zzog:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzns:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzog:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzog:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzns:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzbk()V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzns:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
