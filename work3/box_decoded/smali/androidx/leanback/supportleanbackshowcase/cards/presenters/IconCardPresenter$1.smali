.class Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;
.super Ljava/lang/Object;
.source "IconCardPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;->onCreateView()Landroidx/leanback/widget/ImageCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;

.field final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;Landroid/widget/ImageView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;->this$0:Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;

    iput-object p2, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 46
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;->this$0:Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;

    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter$1;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;->access$000(Landroidx/leanback/supportleanbackshowcase/cards/presenters/IconCardPresenter;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
