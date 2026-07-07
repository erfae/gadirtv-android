.class public Landroidx/leanback/tab/LeanbackTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "LeanbackTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field final mAdapterDataSetObserver:Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

.field mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;-><init>(Landroidx/leanback/tab/LeanbackTabLayout;)V

    iput-object p1, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mAdapterDataSetObserver:Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;-><init>(Landroidx/leanback/tab/LeanbackTabLayout;)V

    iput-object p1, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mAdapterDataSetObserver:Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;-><init>(Landroidx/leanback/tab/LeanbackTabLayout;)V

    iput-object p1, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mAdapterDataSetObserver:Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "views",
            "direction",
            "focusableMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/tab/LeanbackTabLayout;->hasFocus()Z

    move-result v2

    .line 111
    invoke-virtual {p0, v1}, Landroidx/leanback/tab/LeanbackTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x82

    if-eq p2, v3, :cond_1

    const/16 v3, 0x21

    if-ne p2, v3, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v1, 0x42

    if-eq p2, v1, :cond_3

    const/16 v1, 0x11

    if-ne p2, v1, :cond_4

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    return-void

    .line 122
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 89
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/tabs/TabLayout;->onLayout(ZIIII)V

    .line 90
    invoke-virtual {p0}, Landroidx/leanback/tab/LeanbackTabLayout;->updatePageTabs()V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 96
    iget-object v0, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mAdapterDataSetObserver:Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 99
    :cond_0
    iput-object p1, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iget-object v0, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mAdapterDataSetObserver:Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method updatePageTabs()V
    .locals 6

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Landroidx/leanback/tab/LeanbackTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    .line 136
    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 137
    new-instance v4, Landroidx/leanback/tab/TabFocusChangeListener;

    iget-object v5, p0, Landroidx/leanback/tab/LeanbackTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v4, p0, v5}, Landroidx/leanback/tab/TabFocusChangeListener;-><init>(Landroidx/leanback/tab/LeanbackTabLayout;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
