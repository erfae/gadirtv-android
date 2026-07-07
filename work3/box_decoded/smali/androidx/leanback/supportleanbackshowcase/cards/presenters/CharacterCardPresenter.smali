.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/CharacterCardPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;
.source "CharacterCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter<",
        "Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;)V
    .locals 0

    .line 39
    invoke-virtual {p2, p1}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->updateUi(Landroidx/leanback/supportleanbackshowcase/models/Card;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 0

    .line 26
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CharacterCardPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;)V

    return-void
.end method

.method protected onCreateView()Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;
    .locals 2

    .line 34
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CharacterCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CharacterCardPresenter;->onCreateView()Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;

    move-result-object v0

    return-object v0
.end method
