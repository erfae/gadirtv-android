.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;->f$1:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$TaptAJTK83_TEvJpCfu8qIdagQQ;->f$1:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->lambda$setEventListeners$30$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
