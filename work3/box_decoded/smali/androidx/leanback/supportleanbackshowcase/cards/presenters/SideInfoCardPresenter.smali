.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;
.source "SideInfoCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter<",
        "Landroidx/leanback/widget/BaseCardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 7

    .line 50
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$id;->main_image:I

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/BaseCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getLocalImageResourceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/supportleanbackshowcase/R$dimen;->sidetext_image_card_width:I

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 54
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/leanback/supportleanbackshowcase/R$dimen;->sidetext_image_card_height:I

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 56
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 57
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@get Icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 62
    :cond_0
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$id;->primary_text:I

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/BaseCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$id;->secondary_text:I

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/BaseCardView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 4

    .line 41
    new-instance v0, Landroidx/leanback/widget/BaseCardView;

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/leanback/supportleanbackshowcase/R$style;->SideInfoCardStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseCardView;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/leanback/supportleanbackshowcase/R$layout;->side_info_card:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseCardView;->addView(Landroid/view/View;)V

    return-object v0
.end method
