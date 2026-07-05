.class Landroidx/leanback/media/MediaPlayerAdapter$7;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$7;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$7;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
