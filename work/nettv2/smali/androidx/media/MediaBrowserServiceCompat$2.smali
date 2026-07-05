.class Landroidx/media/MediaBrowserServiceCompat$2;
.super Landroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$Result<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onResultSent(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 2
    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_item"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$2;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
