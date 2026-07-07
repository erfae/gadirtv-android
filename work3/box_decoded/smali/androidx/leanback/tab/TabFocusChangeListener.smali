.class Landroidx/leanback/tab/TabFocusChangeListener;
.super Ljava/lang/Object;
.source "TabFocusChangeListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;

.field mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/leanback/tab/LeanbackTabLayout;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leanbackTabLayout",
            "viewPager"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/leanback/tab/TabFocusChangeListener;->mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;

    .line 31
    iput-object p2, p0, Landroidx/leanback/tab/TabFocusChangeListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 37
    iget-object p2, p0, Landroidx/leanback/tab/TabFocusChangeListener;->mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/leanback/tab/LeanbackTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 38
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 40
    iget-object v1, p0, Landroidx/leanback/tab/TabFocusChangeListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
