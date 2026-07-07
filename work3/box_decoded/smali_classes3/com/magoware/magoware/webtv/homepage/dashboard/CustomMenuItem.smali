.class public Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;
.super Landroid/widget/LinearLayout;
.source "CustomMenuItem.java"


# instance fields
.field iconAvatar:Landroid/widget/ImageView;

.field imageBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private menuObject:Lcom/magoware/magoware/webtv/database/objects/MenuObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/magoware/magoware/webtv/database/objects/MenuObject;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "menuItem",
            "imageBitmap"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->menuObject:Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->imageBitmap:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e0078

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0346

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->iconAvatar:Landroid/widget/ImageView;

    const v2, 0x7f0803e3

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->imageBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 47
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->iconAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    iget-object v3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->iconAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const v1, 0x7f0b065f

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CustomMenuItem;->menuObject:Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
