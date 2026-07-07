.class Lcom/google/vr/sdk/widgets/video/deps/h$1;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/h;-><init>([Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/oq;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/h;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/h;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h$1;->a:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h$1;->a:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Landroid/os/Message;)V

    return-void
.end method
