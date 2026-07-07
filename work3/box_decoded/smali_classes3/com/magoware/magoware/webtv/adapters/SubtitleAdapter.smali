.class public Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SubtitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static current:Ljava/lang/String;

.field public static last:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field data:[Ljava/lang/String;

.field layoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutResourceId",
            "data"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->data:[Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->layoutResourceId:I

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->data:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 40
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->layoutResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    new-instance p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;

    invoke-direct {p3}, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;-><init>()V

    const v1, 0x7f0b05a4

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->btn:Landroid/widget/RadioButton;

    const v1, 0x7f0b05a5

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->txt:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;

    .line 52
    :goto_0
    iget-object v1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->txt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->data:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget-object v1, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->current:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 55
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter;->data:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-static {v1, p1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->btn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->btn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 61
    iget-object p1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->btn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 63
    :cond_3
    iget-object p1, p3, Lcom/magoware/magoware/webtv/adapters/SubtitleAdapter$Holder;->btn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    return-object p2
.end method
