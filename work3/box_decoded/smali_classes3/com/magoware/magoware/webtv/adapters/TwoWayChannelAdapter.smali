.class public Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwoWayChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final channels:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

.field private final context:Landroid/content/Context;

.field private final layout_id:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout_id",
            "list",
            "channels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;",
            "Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->values:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->layout_id:I

    .line 29
    iput-object p4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->channels:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    return-void
.end method


# virtual methods
.method public getChannelPosition(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_number"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->values:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 18
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->getItem(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 49
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 50
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->layout_id:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b0156

    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f0b015c

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->channels:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setColumnWidth(I)V

    .line 56
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setWidth(I)V

    const/16 v1, 0x50

    .line 57
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setHeight(I)V

    const v1, 0x7f080347

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->values:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const-string v3, "Image"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 67
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :goto_0
    iget-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayChannelAdapter;->values:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
