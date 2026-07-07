.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SimpleTextDrawable.java"


# instance fields
.field private final backgroundColor:I

.field private final paint:Landroid/graphics/Paint;

.field private final paint1:Landroid/graphics/Paint;

.field radius:F

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/high16 v0, 0x41b00000    # 22.0f

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "textSize"
        }
    .end annotation

    const/high16 v0, -0x1000000

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;-><init>(Ljava/lang/String;FI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "textSize",
            "backgroundColor"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x41880000    # 17.0f

    .line 18
    iput v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->radius:F

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->text:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->backgroundColor:I

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 25
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x40c00000    # 6.0f

    const/4 v0, 0x0

    const v1, -0xff0001

    .line 26
    invoke-virtual {p1, p3, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint1:Landroid/graphics/Paint;

    const-string p2, "#222222"

    .line 32
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->text:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    iget v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->backgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 51
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    .line 52
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v7, v1, v3

    const/4 v8, 0x0

    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v10, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    iget-object v11, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    iget-object v12, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    add-float/2addr v11, v12

    neg-int v12, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float v11, v6, v11

    iget-object v12, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    .line 53
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v5, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    array-length v2, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 59
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 60
    aget-object v7, v1, v2

    const/4 v8, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v11, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    add-float/2addr v6, v11

    int-to-float v11, v2

    div-float/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v6, v6, v11

    sub-float/2addr v6, v11

    sub-float v11, v3, v6

    iget-object v12, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    .line 60
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_1
    sget-boolean v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/tv_channels_presenters/TvChannelsView;->isTvChannelIcon:Z

    if-eqz v2, :cond_2

    .line 67
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v2

    iget v12, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->radius:F

    iget-object v13, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint1:Landroid/graphics/Paint;

    move-object v6, p1

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 68
    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    const/4 v8, 0x0

    .line 69
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v11, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    add-float/2addr v6, v11

    neg-int v11, v5

    int-to-float v11, v11

    div-float/2addr v6, v11

    sub-float v11, v3, v6

    iget-object v12, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    .line 69
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/SimpleTextDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
