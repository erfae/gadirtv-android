.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/SingleLineCardPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;
.source "SingleLineCardPresenter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->SingleLineCardTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 0

    .line 29
    check-cast p2, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SingleLineCardPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    .line 37
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SingleLineCardPresenter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Landroidx/leanback/supportleanbackshowcase/R$styleable;->lbImageCardView:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    return-void
.end method
