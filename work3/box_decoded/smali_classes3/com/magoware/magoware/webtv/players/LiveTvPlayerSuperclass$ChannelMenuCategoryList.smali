.class public Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;
.super Landroid/widget/ArrayAdapter;
.source "LiveTvPlayerSuperclass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelMenuCategoryList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field private category_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private selectedColor:I

.field private selectedIndex:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;)V"
        }
    .end annotation

    .line 1922
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const p1, 0x7f0e0063

    .line 1923
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string p1, "#78696969"

    .line 1919
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->selectedColor:I

    .line 1924
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->context:Landroid/content/Context;

    .line 1925
    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    .line 1926
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->reArrangeList()V

    return-void
.end method

.method private reArrangeList()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1971
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1972
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    if-nez v2, :cond_0

    goto :goto_1

    .line 1974
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->is_adult_content:Z

    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 1975
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1976
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_1

    .line 1979
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    const/16 v3, 0x29a

    if-ne v2, v3, :cond_2

    .line 1980
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1981
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation

    .line 1987
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1936
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_1

    .line 1948
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "layout_inflater"

    if-eqz p2, :cond_0

    .line 1949
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0064

    .line 1950
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1952
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0063

    .line 1953
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    :goto_0
    const p3, 0x7f0b0146

    .line 1956
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1957
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1958
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->category_list:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p3, p3, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1959
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1960
    iget p3, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->selectedIndex:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    if-ne p1, p3, :cond_2

    const-string p1, "#80000000"

    .line 1961
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1963
    :cond_2
    iget p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->selectedColor:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    :goto_1
    return-object p2
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ind"
        }
    .end annotation

    .line 1930
    iput p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->selectedIndex:I

    .line 1931
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;->notifyDataSetChanged()V

    return-void
.end method
