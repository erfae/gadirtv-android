.class Lcom/magoware/magoware/webtv/login/SignUpFragment$2;
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

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "context",
            "resource",
            "objects",
            "val$typeface"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    iput-object p5, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->val$typeface:Landroid/graphics/Typeface;

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

    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 454
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 455
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const v1, 0x7f060086

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    :goto_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->access$000(Lcom/magoware/magoware/webtv/login/SignUpFragment;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080293

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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

    .line 436
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 437
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08039a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x2

    const/high16 v0, 0x41900000    # 18.0f

    .line 439
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->val$typeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 441
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    :goto_0
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object p3, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;->this$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->access$000(Lcom/magoware/magoware/webtv/login/SignUpFragment;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    return-object p1
.end method
