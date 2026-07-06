.class public final Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
.super Landroidx/leanback/widget/Parallax$IntProperty;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/RecyclerViewParallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildPositionProperty"
.end annotation


# instance fields
.field public mAdapterPosition:I

.field public mFraction:F

.field public mOffset:I

.field public mViewId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/Parallax$IntProperty;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adapterPosition(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    return-object p0
.end method

.method public fraction(F)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    return-object p0
.end method

.method public getAdapterPosition()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    return v0
.end method

.method public getFraction()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    return v0
.end method

.method public offset(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    return-object p0
.end method

.method public viewId(I)Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    return-object p0
.end method
