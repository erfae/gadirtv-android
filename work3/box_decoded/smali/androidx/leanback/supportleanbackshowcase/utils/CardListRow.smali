.class public Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;
.super Landroidx/leanback/widget/ListRow;
.source "CardListRow.java"


# instance fields
.field private mCardRow:Landroidx/leanback/supportleanbackshowcase/models/CardRow;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/supportleanbackshowcase/models/CardRow;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    .line 34
    invoke-virtual {p0, p3}, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;->setCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)V

    return-void
.end method


# virtual methods
.method public getCardRow()Landroidx/leanback/supportleanbackshowcase/models/CardRow;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;->mCardRow:Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    return-object v0
.end method

.method public setCardRow(Landroidx/leanback/supportleanbackshowcase/models/CardRow;)V
    .locals 0

    .line 42
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/utils/CardListRow;->mCardRow:Landroidx/leanback/supportleanbackshowcase/models/CardRow;

    return-void
.end method
