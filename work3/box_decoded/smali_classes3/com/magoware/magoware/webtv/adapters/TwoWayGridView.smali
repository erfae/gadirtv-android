.class public Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final DEBUG:Z = false

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TwoWayGridView"


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field protected mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mNumRows:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mRequestedNumRows:I

.field private mRequestedRowHeight:I

.field private mRequestedVerticalSpacing:I

.field private mRowHeight:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    .line 35
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mHorizontalSpacing:I

    .line 39
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mVerticalSpacing:I

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStretchMode:I

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceView:Landroid/view/View;

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v0, 0x3

    .line 52
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGravity:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    .line 60
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setupGridType()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const v0, 0x1010071

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    .line 35
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mHorizontalSpacing:I

    .line 39
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    .line 41
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStretchMode:I

    const/4 v3, 0x0

    .line 49
    iput-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceView:Landroid/view/View;

    .line 50
    iput-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v4, 0x3

    .line 52
    iput v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGravity:I

    .line 54
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    iput-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    .line 70
    sget-object v3, Lcom/magoware/magoware/webtv/R$styleable;->TwoWayGridView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 75
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setHorizontalSpacing(I)V

    const/4 p2, 0x7

    .line 77
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 79
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setVerticalSpacing(I)V

    const/4 p2, 0x6

    .line 81
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setStretchMode(I)V

    .line 86
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-lez p2, :cond_1

    .line 88
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setColumnWidth(I)V

    :cond_1
    const/4 p2, 0x5

    .line 91
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-lez p2, :cond_2

    .line 93
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setRowHeight(I)V

    :cond_2
    const/4 p2, 0x1

    .line 96
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 97
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNumColumns(I)V

    const/4 p3, 0x4

    .line 99
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 100
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNumRows(I)V

    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_3

    .line 104
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setGravity(I)V

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setupGridType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedHorizontalSpacing:I

    return p0
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedColumnWidth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedVerticalSpacing:I

    return p0
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedNumColumns:I

    return p0
.end method

.method static synthetic access$1400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;II)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGravity:I

    return p0
.end method

.method static synthetic access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    return p0
.end method

.method static synthetic access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    return p1
.end method

.method static synthetic access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRowHeight:I

    return p0
.end method

.method static synthetic access$2102(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRowHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHorizontalScrollbarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;II)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedRowHeight:I

    return p0
.end method

.method static synthetic access$2600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedNumRows:I

    return p0
.end method

.method static synthetic access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    return p0
.end method

.method static synthetic access$302(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    return p1
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mVerticalSpacing:I

    return p0
.end method

.method static synthetic access$402(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mVerticalSpacing:I

    return p1
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mColumnWidth:I

    return p0
.end method

.method static synthetic access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mColumnWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mHorizontalSpacing:I

    return p0
.end method

.method static synthetic access$702(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mHorizontalSpacing:I

    return p1
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStretchMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$902(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    return-object p1
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "count",
            "event"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->layoutChildren()V

    .line 362
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    .line 365
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    const/16 v4, 0x3e

    const/16 v5, 0x42

    if-gez v3, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 374
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->resurrectSelection()Z

    return v2

    :cond_3
    :goto_0
    const/16 v3, 0x82

    const/16 v6, 0x21

    if-eq p1, v4, :cond_a

    if-eq p1, v5, :cond_8

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 389
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 390
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v3

    goto :goto_2

    .line 392
    :cond_4
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->fullScroll(I)Z

    move-result v3

    goto :goto_2

    .line 381
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 382
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v3

    goto :goto_2

    .line 384
    :cond_5
    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->fullScroll(I)Z

    move-result v3

    goto :goto_2

    .line 406
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 407
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v3

    goto :goto_2

    .line 409
    :cond_6
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->fullScroll(I)Z

    move-result v3

    goto :goto_2

    .line 397
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 398
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v3, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v3

    goto :goto_2

    .line 401
    :cond_7
    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->fullScroll(I)Z

    move-result v3

    goto :goto_2

    .line 415
    :cond_8
    :pswitch_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_9

    .line 416
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->keyPressed()V

    :cond_9
    return v2

    .line 424
    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_b

    .line 425
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->pageScroll(I)Z

    move-result v3

    goto :goto_2

    .line 427
    :cond_b
    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->pageScroll(I)Z

    move-result v3

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_d

    return v2

    :cond_d
    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    return v1

    .line 447
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 445
    :cond_f
    invoke-super {p0, p1, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 443
    :cond_10
    invoke-super {p0, p1, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private setupGridType()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$1;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "params",
            "index",
            "count"
        }
    .end annotation

    .line 256
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    .line 260
    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 261
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 264
    :cond_0
    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 265
    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 266
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 267
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    div-int p2, p4, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 269
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez p2, :cond_1

    .line 270
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    rem-int p2, p3, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 271
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    div-int/2addr p3, p2

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    .line 275
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    add-int/lit8 p3, p2, -0x1

    rem-int p2, p4, p2

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 276
    iget p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    div-int/2addr p4, p3

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .line 719
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 720
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    if-nez v2, :cond_2

    .line 721
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 722
    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    .line 726
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 727
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 728
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v2, v2, 0x64

    .line 730
    div-int/2addr v2, v1

    add-int/2addr v3, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 733
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 6

    .line 747
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    if-nez v0, :cond_0

    .line 748
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 752
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    .line 753
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    div-int/2addr v4, v3

    .line 754
    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v3

    mul-int/lit8 v4, v4, 0x64

    mul-int/lit8 v2, v2, 0x64

    .line 755
    div-int/2addr v2, v0

    sub-int/2addr v4, v2

    .line 756
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v5

    mul-float v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v4, v0

    .line 755
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .line 765
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 768
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    .line 769
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    .line 770
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .line 663
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 664
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    if-eqz v2, :cond_2

    .line 665
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 666
    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    .line 670
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 671
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 672
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v2, v2, 0x64

    .line 674
    div-int/2addr v2, v1

    add-int/2addr v3, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 677
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 679
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 6

    .line 691
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 694
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 696
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    .line 697
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    div-int/2addr v4, v3

    .line 698
    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v3

    mul-int/lit8 v4, v4, 0x64

    mul-int/lit8 v2, v2, 0x64

    .line 699
    div-int/2addr v2, v0

    sub-int/2addr v4, v2

    .line 700
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v5

    mul-float v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v4, v0

    .line 699
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .line 709
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 712
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    .line 713
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    .line 714
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method fillGap(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->fillGap(Z)V

    return-void
.end method

.method findMotionRowX(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 220
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumRows:I

    .line 221
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 223
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 224
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 229
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 230
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method findMotionRowY(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 197
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mNumColumns:I

    .line 198
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 200
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 201
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 206
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 207
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method fullScroll(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    .line 488
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    .line 489
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectionInt(I)V

    .line 490
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 493
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    .line 494
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectionInt(I)V

    .line 495
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    .line 282
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 284
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_0
    const/4 v1, 0x0

    .line 288
    :try_start_0
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    .line 290
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invalidate()V

    .line 292
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->resetList()V

    .line 294
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 302
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    .line 298
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->layoutChildren()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 302
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mBlockLayoutRequests:Z

    .line 304
    :cond_4
    throw v2
.end method

.method lookForSelectablePosition(IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "lookDown"
        }
    .end annotation

    .line 173
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 178
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gainFocus",
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 509
    invoke-super {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getScrollY()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 517
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    const v1, 0x7fffffff

    .line 519
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 522
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v4, v3, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->isCandidateSelection(II)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 527
    invoke-virtual {v4, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 528
    invoke-virtual {p0, v4, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 529
    invoke-static {p3, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v4

    if-ge v4, v1, :cond_1

    move v0, v3

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 539
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelection(I)V

    goto :goto_2

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, p1, v0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "repeatCount",
            "event"
        }
    .end annotation

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, p1, v0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 242
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->onMeasure(II)V

    .line 243
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    instance-of v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$VerticalGridBuilder;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mScrollVertically:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    instance-of v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$HorizontalGridBuilder;

    if-nez v0, :cond_2

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setupGridType()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->onMeasure(II)V

    return-void
.end method

.method pageScroll(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 464
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 466
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr p1, v1

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 470
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectionInt(I)V

    .line 471
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->invokeOnItemScrollListener()V

    return v1

    :cond_2
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 23
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataSetObserver:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->resetList()V

    .line 136
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->clear()V

    .line 137
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p1, -0x1

    .line 139
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 140
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mOldSelectedRowId:J

    .line 142
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 143
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mOldItemCount:I

    .line 144
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataChanged:Z

    .line 146
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->checkFocus()V

    .line 148
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataSetObserver:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;

    .line 149
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mDataSetObserver:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 151
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 154
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mItemCount:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 159
    :goto_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 161
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->checkSelectionChanged()V

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->checkFocus()V

    .line 165
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->checkSelectionChanged()V

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayout()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnWidth"
        }
    .end annotation

    .line 615
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 616
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedColumnWidth:I

    .line 617
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 553
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 554
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGravity:I

    .line 555
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalSpacing"
        }
    .end annotation

    .line 568
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 569
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedHorizontalSpacing:I

    .line 570
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numColumns"
        }
    .end annotation

    .line 641
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 642
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedNumColumns:I

    .line 643
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numRows"
        }
    .end annotation

    .line 654
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedNumRows:I

    if-eq p1, v0, :cond_0

    .line 655
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedNumRows:I

    .line 656
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setRowHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rowHeight"
        }
    .end annotation

    .line 628
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedRowHeight:I

    if-eq p1, v0, :cond_0

    .line 629
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedRowHeight:I

    .line 630
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 321
    :cond_0
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mResurrectToPosition:I

    :goto_0
    const/4 p1, 0x2

    .line 323
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mLayoutMode:I

    return-void
.end method

.method setSelectionInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mGridBuilder:Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView$GridBuilder;->setSelectionInt(I)V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stretchMode"
        }
    .end annotation

    .line 598
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 599
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mStretchMode:I

    .line 600
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalSpacing"
        }
    .end annotation

    .line 584
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 585
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->mRequestedVerticalSpacing:I

    .line 586
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method
