.class Landroidx/leanback/media/MediaPlayerGlue$2;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/media/MediaPlayerGlue;->setMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mFirstRepeat:Z

.field public final synthetic this$0:Landroidx/leanback/media/MediaPlayerGlue;


# direct methods
.method public constructor <init>(Landroidx/leanback/media/MediaPlayerGlue;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->this$0:Landroidx/leanback/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->mFirstRepeat:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->mFirstRepeat:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->this$0:Landroidx/leanback/media/MediaPlayerGlue;

    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackControlGlue;->play()V

    return-void
.end method
