.class Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;
.super Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;
.source "PlaybackSupportFragmentGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;->this$0:Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;

    invoke-direct {p0}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;->this$0:Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;

    iget-object v0, v0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackSupportFragment;->getProgressBarManager()Landroidx/leanback/app/ProgressBarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/ProgressBarManager;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/app/ProgressBarManager;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;->this$0:Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;

    iget-object p1, p1, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;->this$0:Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;

    iget-object v0, v0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/app/PlaybackSupportFragment;->onVideoSizeChanged(II)V

    return-void
.end method
