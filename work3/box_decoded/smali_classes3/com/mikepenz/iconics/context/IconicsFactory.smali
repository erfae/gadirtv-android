.class Lcom/mikepenz/iconics/context/IconicsFactory;
.super Ljava/lang/Object;
.source "IconicsFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 10

    .line 99
    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 100
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_size:I

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 101
    sget v4, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_offset_x:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 102
    sget v5, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_offset_y:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 103
    sget v6, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_padding:I

    invoke-virtual {p2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 104
    sget v7, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_contour_color:I

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 105
    sget v8, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_contour_width:I

    invoke-virtual {p2, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 106
    sget v9, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_background_color:I

    invoke-virtual {p2, v9, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 107
    sget v9, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_corner_radius:I

    invoke-virtual {p2, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 109
    new-instance v9, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-direct {v9, p1, p3}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v9, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_0
    if-eq v2, v3, :cond_1

    .line 115
    invoke-virtual {v9, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_1
    if-eq v4, v3, :cond_2

    .line 118
    invoke-virtual {v9, v4}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_2
    if-eq v5, v3, :cond_3

    .line 121
    invoke-virtual {v9, v5}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_3
    if-eq v6, v3, :cond_4

    .line 124
    invoke-virtual {v9, v6}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_4
    if-eqz v7, :cond_5

    .line 127
    invoke-virtual {v9, v7}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_5
    if-eq v8, v3, :cond_6

    .line 130
    invoke-virtual {v9, v8}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_6
    if-eqz v1, :cond_7

    .line 133
    invoke-virtual {v9, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_7
    if-eq p2, v3, :cond_8

    .line 136
    invoke-virtual {v9, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_8
    return-object v9
.end method

.method public onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    .line 27
    sget v0, Lcom/mikepenz/iconics/core/R$id;->iconics_tag_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget p2, Lcom/mikepenz/iconics/core/R$id;->iconics_tag_id:I

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 44
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 46
    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_icon:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    check-cast p1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {p0, p2, p3, v0}, Lcom/mikepenz/iconics/context/IconicsFactory;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 55
    new-instance p3, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    invoke-direct {p3}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object p2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Landroid/widget/TextView;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->build()V

    goto :goto_0

    .line 58
    :cond_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 60
    new-instance p3, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    invoke-direct {p3}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object p3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Landroid/widget/TextView;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderView;->build()V

    .line 62
    new-instance p3, Lcom/mikepenz/iconics/context/IconicsFactory$1;

    invoke-direct {p3, p0, p2}, Lcom/mikepenz/iconics/context/IconicsFactory$1;-><init>(Lcom/mikepenz/iconics/context/IconicsFactory;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 78
    :cond_4
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 79
    sget-object v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 80
    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->Iconics_ico_icon:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 83
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p3, v0}, Lcom/mikepenz/iconics/context/IconicsFactory;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_5
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    :goto_0
    return-void
.end method
