.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;
.super Landroidx/leanback/widget/RowHeaderPresenter;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomRowHeaderPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 775
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/RowHeaderPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "item"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 779
    :cond_0
    check-cast p2, Landroidx/leanback/widget/Row;

    invoke-virtual {p2}, Landroidx/leanback/widget/Row;->getHeaderItem()Landroidx/leanback/widget/HeaderItem;

    move-result-object p2

    .line 780
    :goto_0
    check-cast p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    .line 781
    iget-object p1, p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    const v1, 0x7f0b0552

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 782
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const v3, 0x7f0601c7

    if-lt v1, v2, :cond_1

    .line 783
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    :goto_1
    invoke-virtual {p2}, Landroidx/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 788
    invoke-virtual {p2}, Landroidx/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0601fc

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    .line 790
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$CustomRowHeaderPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 791
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method
