.class public Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;
.source "MainMenuCardPresenter.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 25
    instance-of v0, p1, Landroidx/leanback/supportleanbackshowcase/models/Card;

    if-nez v0, :cond_0

    .line 26
    invoke-super {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->shouldUseModifiedCardPresenter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-super {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 31
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;->getPresentersHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/Presenter;

    if-nez v1, :cond_3

    .line 33
    sget-object v1, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter$1;->$SwitchMap$androidx$leanback$supportleanbackshowcase$models$Card$Type:[I

    invoke-virtual {v0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/supportleanbackshowcase/models/Card$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 38
    invoke-super {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/CardPresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p1

    return-object p1

    .line 35
    :cond_2
    new-instance v1, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/SingleLineCardPresenterModified;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;->context:Landroid/content/Context;

    invoke-direct {v1, p1}, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/SingleLineCardPresenterModified;-><init>(Landroid/content/Context;)V

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/modifiedpresenters/leanback/MainMenuCardPresenter;->getPresentersHashMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
