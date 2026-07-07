.class public Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveTvGalleryImageAdapter.java"


# instance fields
.field private Channel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private ChannelPos:I

.field private context:Landroid/content/Context;

.field public image:Landroid/graphics/drawable/Drawable;

.field public inflater:Landroid/view/LayoutInflater;

.field public metrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "con",
            "channel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChannelPosition()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->ChannelPos:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->getItem(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayingChannelPosition()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->ChannelPos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 72
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0e0069

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b0156

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f0b015c

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    const-string v2, "Image"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v2, 0x7f0802e0

    .line 85
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :goto_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->metrics:Landroid/util/DisplayMetrics;

    .line 92
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 95
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 97
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x7d0

    const/16 v3, 0x64

    if-lt v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    const/16 v3, 0x82

    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v2

    .line 102
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    const/16 v2, 0x46

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    .line 105
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    const/16 v4, 0x578

    if-lt v1, v4, :cond_1

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    const/16 v4, 0x50

    invoke-static {v2, v4}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v2

    .line 108
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v3

    .line 109
    new-instance v4, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    div-int/lit8 v1, v1, 0x14

    invoke-static {v2, v1}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    .line 113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v3

    .line 117
    new-instance v4, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    div-int/lit8 v1, v1, 0x14

    invoke-static {v2, v1}, Lcom/magoware/magoware/webtv/util/Utils;->convertDPI(Landroid/content/Context;I)I

    move-result v1

    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 123
    :cond_2
    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :goto_1
    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setChannelPosition(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 45
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->Channel:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-ne v1, v2, :cond_0

    .line 46
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/LiveTvGalleryImageAdapter;->ChannelPos:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
