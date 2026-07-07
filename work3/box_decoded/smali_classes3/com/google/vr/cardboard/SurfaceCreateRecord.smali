.class public final Lcom/google/vr/cardboard/SurfaceCreateRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final frameListener:Ljava/lang/Runnable;

.field public final handler:Landroid/os/Handler;

.field public final height:I

.field public final surfaceListener:Ljava/lang/Runnable;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->surfaceListener:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->frameListener:Ljava/lang/Runnable;

    .line 4
    iput-object p3, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->handler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->width:I

    .line 6
    iput p1, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->surfaceListener:Ljava/lang/Runnable;

    .line 10
    iput-object p2, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->frameListener:Ljava/lang/Runnable;

    .line 11
    iput-object p3, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->handler:Landroid/os/Handler;

    .line 12
    iput p4, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->width:I

    .line 13
    iput p5, p0, Lcom/google/vr/cardboard/SurfaceCreateRecord;->height:I

    return-void
.end method
