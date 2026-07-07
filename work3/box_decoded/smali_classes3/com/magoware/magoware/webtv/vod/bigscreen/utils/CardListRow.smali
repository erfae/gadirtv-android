.class public Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;
.super Landroidx/leanback/widget/ListRow;
.source "CardListRow.java"


# instance fields
.field private mCardRow:Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "adapter",
            "cardRow"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 15
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;->setCardRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;)V

    return-void
.end method


# virtual methods
.method public getCardRow()Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;->mCardRow:Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    return-object v0
.end method

.method public setCardRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardRow"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;->mCardRow:Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    return-void
.end method
