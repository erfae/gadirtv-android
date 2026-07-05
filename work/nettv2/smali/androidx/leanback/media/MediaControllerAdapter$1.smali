.class Landroidx/leanback/media/MediaControllerAdapter$1;
.super Ljava/lang/Object;
.source "MediaControllerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/MediaControllerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/media/MediaControllerAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/media/MediaControllerAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    iget-object v1, v0, Landroidx/leanback/media/MediaControllerAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
