.class public Landroidx/leanback/app/VideoSupportFragmentGlueHost;
.super Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;
.source "VideoSupportFragmentGlueHost.java"

# interfaces
.implements Landroidx/leanback/media/SurfaceHolderGlueHost;


# instance fields
.field private final mFragment:Landroidx/leanback/app/VideoSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/VideoSupportFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;-><init>(Landroidx/leanback/app/PlaybackSupportFragment;)V

    .line 33
    iput-object p1, p0, Landroidx/leanback/app/VideoSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/VideoSupportFragment;

    return-void
.end method


# virtual methods
.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroidx/leanback/app/VideoSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/VideoSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/VideoSupportFragment;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
