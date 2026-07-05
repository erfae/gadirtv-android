.class Landroidx/leanback/media/MediaPlayerAdapter$8;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/media/MediaPlayerAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/media/MediaPlayerAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/16 p1, 0x2bd

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    iput-boolean p3, p1, Landroidx/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    iput-boolean v0, p1, Landroidx/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    :goto_0
    const/4 p1, 0x1

    .line 5
    :goto_1
    iget-object p2, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    :goto_2
    return p3
.end method
