.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;->f$1:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$9e2HL4rg0itrO1tor87aVADtgSo;->f$1:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->lambda$setEventListeners$29$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
