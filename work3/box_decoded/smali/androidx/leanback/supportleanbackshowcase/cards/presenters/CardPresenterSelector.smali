.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;
.super Landroidx/leanback/widget/PresenterSelector;
.source "CardPresenterSelector.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final presenters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/leanback/supportleanbackshowcase/models/Card$Type;",
            "Landroidx/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/leanback/widget/PresenterSelector;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->presenters:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 3

    .line 46
    instance-of v0, p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    if-eqz v0, :cond_5

    .line 50
    check-cast p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 51
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->presenters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/Presenter;

    if-nez v0, :cond_4

    .line 53
    sget-object v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector$1;->$SwitchMap$androidx$leanback$supportleanbackshowcase$models$Card$Type:[I

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 86
    :pswitch_0
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CharacterCardPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CharacterCardPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 83
    :pswitch_1
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 80
    :pswitch_2
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/TextCardPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/TextCardPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 77
    :pswitch_3
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SideInfoCardPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 63
    :pswitch_4
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->MovieCardSimpleTheme:I

    .line 64
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v1

    sget-object v2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MOVIE_BASE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    if-ne v1, v2, :cond_0

    .line 65
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->MovieCardBasicTheme:I

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v1

    sget-object v2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->MOVIE_COMPLETE:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    if-ne v1, v2, :cond_1

    .line 67
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->MovieCardCompleteTheme:I

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v1

    sget-object v2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->SQUARE_BIG:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    if-ne v1, v2, :cond_2

    .line 69
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->SquareBigCardTheme:I

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v1

    sget-object v2, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->GAME:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    if-ne v1, v2, :cond_3

    .line 71
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->GameCardTheme:I

    .line 73
    :cond_3
    :goto_0
    new-instance v1, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    goto :goto_1

    .line 56
    :pswitch_5
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SingleLineCardPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/SingleLineCardPresenter;-><init>(Landroid/content/Context;)V

    .line 93
    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->presenters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 47
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "The PresenterSelector only supports data items of type \'%s\'"

    .line 48
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPresentersHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/leanback/supportleanbackshowcase/models/Card$Type;",
            "Landroidx/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->presenters:Ljava/util/HashMap;

    return-object v0
.end method
