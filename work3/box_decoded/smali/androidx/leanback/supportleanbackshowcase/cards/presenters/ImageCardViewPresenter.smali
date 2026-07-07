.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;
.source "ImageCardViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter<",
        "Landroidx/leanback/widget/ImageCardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->DefaultCardTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 34
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/AbstractCardPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 0

    .line 31
    check-cast p2, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V
    .locals 4

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "@@getLocalImageResourceId "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ImageCardView;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/ImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/ImageCardView;->setContentText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getLocalImageResourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@get Icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object p1

    sget-object v1, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {p1, v1}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$drawable;->missing_menu_icon:I

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$drawable;->no_image_available:I

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object p1

    sget-object v0, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MENU:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {p1, v0}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$drawable;->missing_menu_icon:I

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$drawable;->no_image_available:I

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView()Landroidx/leanback/widget/ImageCardView;
    .locals 2

    .line 43
    new-instance v0, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v1, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter$1;

    invoke-direct {v1, p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter$1;-><init>(Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
