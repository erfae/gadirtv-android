.class final synthetic Lcom/google/android/gms/internal/cast/zzdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private final zzafg:Lcom/google/android/gms/internal/cast/zzdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdz;->zzafg:Lcom/google/android/gms/internal/cast/zzdw;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdz;->zzafg:Lcom/google/android/gms/internal/cast/zzdw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdw;->doFrame(J)V

    return-void
.end method
