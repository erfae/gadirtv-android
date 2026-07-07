.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/TextCardPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;
.source "TextCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter<",
        "Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;)V
    .locals 0

    .line 40
    invoke-virtual {p2, p1}, Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;->updateUi(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 0

    .line 27
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/TextCardPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;)V

    return-void
.end method

.method protected onCreateView()Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;
    .locals 2

    .line 35
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/TextCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/TextCardPresenter;->onCreateView()Landroidx/leanback/supportleanbackshowcase/cards/TextCardView;

    move-result-object v0

    return-object v0
.end method
