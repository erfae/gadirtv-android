.class Lcom/magoware/magoware/webtv/login/SignUpFragment$3;
.super Landroid/widget/ArrayAdapter;
.source "SignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/login/SignUpFragment;->showCountryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "resource",
            "objects"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

    .line 485
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 486
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 487
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const v1, 0x7f060086

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    :goto_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->access$000(Lcom/magoware/magoware/webtv/login/SignUpFragment;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 493
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080293

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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

    .line 470
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 471
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08039a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 472
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 473
    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 474
    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060086

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0601fc

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    :goto_0
    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 478
    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->access$000(Lcom/magoware/magoware/webtv/login/SignUpFragment;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    const/high16 v0, 0x41900000    # 18.0f

    .line 480
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    return-object p1
.end method
