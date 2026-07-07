.class public Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryImageAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private vod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/VODObject;",
            ">;"
        }
    .end annotation
.end field


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
            "vod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/VODObject;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->vod:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->vod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "index",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 42
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    const/16 v0, 0x96

    const/16 v1, 0xfa

    invoke-direct {p3, v0, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 45
    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->context:Landroid/content/Context;

    const v1, 0x4e9ec8c3

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->context:Landroid/content/Context;

    const v2, 0x4efe0e06

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/util/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    const p3, 0x7f0803e1

    if-nez p1, :cond_4

    .line 48
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f080352

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f080353

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-object p2

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->vod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_7

    .line 56
    :try_start_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f080324

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 57
    :cond_5
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f080325

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 59
    :catch_1
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_2
    return-object p2

    .line 64
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/GalleryImageAdapter;->vod:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/VODObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/VODObject;->icon:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/objects/VODObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    const-string v0, "Image"

    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 67
    :catch_2
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-object p2
.end method
