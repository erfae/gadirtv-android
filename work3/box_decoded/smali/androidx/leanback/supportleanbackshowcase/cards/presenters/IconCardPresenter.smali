.class public Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;
.super Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;
.source "IconCardPresenter.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->IconCardTheme:I

    invoke-direct {p0, p1, v0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;->animateIconBackground(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private animateIconBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    const-wide/16 v0, 0xc8

    const/4 v2, 0x2

    const-string v3, "alpha"

    if-eqz p2, :cond_0

    new-array p2, v2, [I

    .line 54
    fill-array-data p2, :array_0

    invoke-static {p1, v3, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    new-array p2, v2, [I

    .line 56
    fill-array-data p2, :array_1

    invoke-static {p1, v3, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method protected bridge synthetic onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView()Landroidx/leanback/widget/ImageCardView;
    .locals 4

    .line 39
    invoke-super {p0}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/ImageCardViewPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 41
    sget v2, Landroidx/leanback/supportleanbackshowcase/R$drawable;->icon_focused:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 42
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    new-instance v2, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;

    invoke-direct {v2, p0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;-><init>(Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ImageCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method
