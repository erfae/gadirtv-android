.class public Landroidx/leanback/widget/DetailsParallax;
.super Landroidx/leanback/widget/RecyclerViewParallax;
.source "DetailsParallax.java"


# instance fields
.field public final mFrameBottom:Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

.field public final mFrameTop:Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/RecyclerViewParallax;-><init>()V

    const-string v0, "overviewRowTop"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Parallax;->addProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->adapterPosition(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    sget v2, Landroidx/leanback/R$id;->details_frame:I

    .line 4
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->viewId(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/DetailsParallax;->mFrameTop:Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    const-string v0, "overviewRowBottom"

    .line 5
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Parallax;->addProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    .line 6
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->adapterPosition(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->viewId(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->fraction(F)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/DetailsParallax;->mFrameBottom:Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    return-void
.end method


# virtual methods
.method public getOverviewRowBottom()Landroidx/leanback/widget/Parallax$IntProperty;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsParallax;->mFrameBottom:Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    return-object v0
.end method

.method public getOverviewRowTop()Landroidx/leanback/widget/Parallax$IntProperty;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsParallax;->mFrameTop:Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    return-object v0
.end method
