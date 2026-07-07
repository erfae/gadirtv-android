.class public Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;
.source "SettingsIconPresenter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->IconCardTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;Landroidx/leanback/widget/ImageCardView;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->setImageBackground(Landroidx/leanback/widget/ImageCardView;I)V

    return-void
.end method

.method private setImageBackground(Landroidx/leanback/widget/ImageCardView;I)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ImageCardView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView()Landroidx/leanback/widget/ImageCardView;
    .locals 2

    .line 34
    invoke-super {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;

    move-result-object v0

    .line 35
    new-instance v1, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter$1;-><init>(Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;Landroidx/leanback/widget/ImageCardView;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 45
    sget v1, Landroidx/leanback/supportleanbackshowcase/R$color;->settings_card_background:I

    invoke-direct {p0, v0, v1}, Landroidx/leanback/supportleanbackshowcase/app/page/SettingsIconPresenter;->setImageBackground(Landroidx/leanback/widget/ImageCardView;I)V

    return-object v0
.end method
