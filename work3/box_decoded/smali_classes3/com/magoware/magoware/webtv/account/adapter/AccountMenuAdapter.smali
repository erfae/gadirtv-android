.class public Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private menuItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0e001e

    .line 24
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;->menuItemsList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0e001e

    .line 38
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0b004d

    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0b004c

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;->menuItemsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;->menuItemName:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const p1, 0x7f080196

    .line 46
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    const p1, 0x7f080272

    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    const p1, 0x7f080276

    .line 50
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    if-ne p1, p3, :cond_4

    const p1, 0x7f08026d

    .line 52
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    const p1, 0x7f08026b

    .line 54
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const/4 p3, 0x5

    if-ne p1, p3, :cond_6

    const p1, 0x7f0801cd

    .line 60
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const/4 p3, 0x6

    if-ne p1, p3, :cond_7

    const p1, 0x7f080073

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/adapter/AccountMenuAdapter;->context:Landroid/content/Context;

    const p3, 0x7f060087

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_7
    :goto_0
    return-object p2
.end method
