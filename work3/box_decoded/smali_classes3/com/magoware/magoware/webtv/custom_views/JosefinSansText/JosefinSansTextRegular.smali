.class public Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;
.super Landroid/widget/TextView;
.source "JosefinSansTextRegular.java"


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

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Lato-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
