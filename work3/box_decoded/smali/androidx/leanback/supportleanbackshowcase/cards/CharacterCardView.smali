.class public Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;
.super Landroidx/leanback/widget/BaseCardView;
.source "CharacterCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$style;->CharacterCardStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$layout;->character_card:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    new-instance p1, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView$1;

    invoke-direct {p1, p0}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView$1;-><init>(Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;)V

    invoke-virtual {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public updateUi(Landroidx/leanback/supportleanbackshowcase/models/Card;)V
    .locals 3

    .line 53
    sget v0, Landroidx/leanback/supportleanbackshowcase/R$id;->primary_text:I

    invoke-virtual {p0, v0}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    sget v1, Landroidx/leanback/supportleanbackshowcase/R$id;->main_image:I

    invoke-virtual {p0, v1}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getIcon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/cards/CharacterCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
