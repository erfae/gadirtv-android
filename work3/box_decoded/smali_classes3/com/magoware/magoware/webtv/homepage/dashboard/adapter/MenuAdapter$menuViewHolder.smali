.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "menuViewHolder"
.end annotation


# instance fields
.field menu_image:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b03fa
    .end annotation
.end field

.field menu_layout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b03fc
    .end annotation
.end field

.field menu_title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b03ff
    .end annotation
.end field

.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
