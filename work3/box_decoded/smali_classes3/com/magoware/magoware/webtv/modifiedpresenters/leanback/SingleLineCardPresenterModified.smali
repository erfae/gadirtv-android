.class public Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/SingleLineCardPresenterModified;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;
.source "SingleLineCardPresenterModified.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x7f1501bf

    .line 15
    invoke-direct {p0, p1, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "card",
            "cardView"
        }
    .end annotation

    .line 12
    check-cast p2, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/SingleLineCardPresenterModified;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "card",
            "cardView"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    .line 21
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/SingleLineCardPresenterModified;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Landroidx/leanback/supportleanbackshowcase/R$styleable;->lbImageCardView:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lbImageCardViewType ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SHAAN"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
