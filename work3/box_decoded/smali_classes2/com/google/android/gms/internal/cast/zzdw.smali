.class public abstract Lcom/google/android/gms/internal/cast/zzdw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private zzafe:Ljava/lang/Runnable;

.field private zzaff:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method final zzfm()Landroid/view/Choreographer$FrameCallback;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdw;->zzaff:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzdz;-><init>(Lcom/google/android/gms/internal/cast/zzdw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdw;->zzaff:Landroid/view/Choreographer$FrameCallback;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdw;->zzaff:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method final zzfn()Ljava/lang/Runnable;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdw;->zzafe:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzdy;-><init>(Lcom/google/android/gms/internal/cast/zzdw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdw;->zzafe:Ljava/lang/Runnable;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdw;->zzafe:Ljava/lang/Runnable;

    return-object v0
.end method
