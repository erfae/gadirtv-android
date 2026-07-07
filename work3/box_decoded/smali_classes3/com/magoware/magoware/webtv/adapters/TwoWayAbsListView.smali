.class public abstract Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;
.source "TwoWayAbsListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field static final SCROLL_HORIZONTAL:I = 0x1

.field static final SCROLL_VERTICAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwoWayAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDrawSelectorOnTop:Z

.field private mFlingProfilingStarted:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMinimumVelocity:I

.field mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

.field protected mPortraitOrientation:Z

.field final mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field protected mScrollVertically:Z

.field private mScrollVerticallyLandscape:Z

.field private mScrollVerticallyPortrait:Z

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 167
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 182
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    .line 203
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionLeftPadding:I

    .line 208
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionTopPadding:I

    .line 213
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionRightPadding:I

    .line 218
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionBottomPadding:I

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 228
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mWidthMeasureSpec:I

    const/4 v0, -0x1

    .line 276
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 287
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedTop:I

    const/4 v1, 0x1

    .line 325
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    .line 345
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v2, 0x0

    .line 347
    iput-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 356
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastTouchMode:I

    .line 359
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollProfilingStarted:Z

    .line 362
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFlingProfilingStarted:Z

    .line 404
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastScrollState:I

    new-array p1, v1, [Z

    .line 430
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mIsScrap:[Z

    .line 499
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->initAbsListView()V

    .line 500
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setupScrollInfo()V

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

    const v0, 0x101006a

    .line 507
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
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

    .line 511
    invoke-direct {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 182
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    .line 192
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 198
    new-instance v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    .line 203
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionLeftPadding:I

    .line 208
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionTopPadding:I

    .line 213
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionRightPadding:I

    .line 218
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionBottomPadding:I

    .line 223
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 228
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mWidthMeasureSpec:I

    const/4 v1, -0x1

    .line 276
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 287
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedTop:I

    const/4 v2, 0x1

    .line 325
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    .line 345
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    .line 347
    iput-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 356
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastTouchMode:I

    .line 359
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollProfilingStarted:Z

    .line 362
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFlingProfilingStarted:Z

    .line 404
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastScrollState:I

    new-array v1, v2, [Z

    .line 430
    iput-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mIsScrap:[Z

    .line 512
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->initAbsListView()V

    .line 514
    sget-object v1, Lcom/magoware/magoware/webtv/R$styleable;->TwoWayAbsListView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 517
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 519
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_0
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    const/4 p2, 0x7

    .line 525
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 526
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setStackFromBottom(Z)V

    const/4 p2, 0x5

    .line 528
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 529
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setScrollingCacheEnabled(Z)V

    const/16 p2, 0x8

    .line 534
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 536
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setTranscriptMode(I)V

    .line 538
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 539
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setCacheColorHint(I)V

    const/4 p2, 0x6

    .line 544
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 545
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSmoothScrollbarEnabled(Z)V

    const/4 p2, 0x4

    .line 547
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 548
    :goto_0
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    const/4 p2, 0x3

    .line 550
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    .line 551
    :cond_2
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    .line 553
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 554
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setupScrollInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastTouchMode:I

    return p0
.end method

.method static synthetic access$1802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastTouchMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastScrollState:I

    return p0
.end method

.method static synthetic access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastScrollState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnScrollListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPerformClick:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPerformClick:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    return-object p1
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static synthetic access$3300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;II)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;II)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    return-object p0
.end method

.method static synthetic access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2961
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 2963
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2964
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 2967
    :cond_1
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1585
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1586
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "dest",
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    .line 2476
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 2477
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2478
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2479
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 2501
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2470
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 2471
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 2472
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2473
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    .line 2488
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 2489
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 2490
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2491
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2482
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 2483
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 2484
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2485
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    .line 2495
    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 2496
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 2497
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2498
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    :goto_0
    add-int/2addr p1, v2

    :goto_1
    sub-int/2addr v0, p2

    sub-int/2addr p1, p0

    mul-int p1, p1, p1

    mul-int v0, v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private initAbsListView()V
    .locals 4

    const/4 v0, 0x1

    .line 559
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setClickable(Z)V

    .line 560
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    .line 561
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setWillNotDraw(Z)V

    .line 562
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 563
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setScrollingCacheEnabled(Z)V

    .line 565
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 566
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchSlop:I

    .line 567
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMinimumVelocity:I

    .line 569
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPortraitOrientation:Z

    .line 571
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    return-void
.end method

.method private orientationChanged()Z
    .locals 5

    .line 592
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPortraitOrientation:Z

    .line 593
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPortraitOrientation:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setupScrollInfo()V

    .line 599
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    :cond_2
    return v2
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "child",
            "longPressPosition",
            "longPressId"
        }
    .end annotation

    .line 1871
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1872
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1876
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1877
    invoke-super {p0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1880
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method private positionSelector(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1507
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionTopPadding:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionRightPadding:I

    add-int/2addr p3, v1

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionBottomPadding:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setupScrollInfo()V
    .locals 3

    .line 578
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPortraitOrientation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    :goto_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 580
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    .line 581
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 582
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_1

    .line 584
    :cond_1
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    .line 585
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 586
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setHorizontalScrollBarEnabled(Z)V

    :goto_1
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .line 772
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2073
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 2074
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 2075
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2082
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v3

    .line 2083
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2084
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected checkConsistency(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consistency"
        }
    .end annotation

    .line 2936
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object p1

    .line 2937
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2939
    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2945
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->access$1000(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2946
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 2947
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->access$1100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object p1

    .line 2948
    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 2950
    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 2788
    instance-of p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 5

    .line 1109
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1110
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v2, :cond_3

    .line 1111
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x64

    .line 1114
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1115
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1116
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v4, v4, 0x64

    .line 1118
    div-int/2addr v4, v1

    add-int/2addr v2, v4

    :cond_0
    sub-int/2addr v0, v3

    .line 1121
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .line 1138
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 1139
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    if-lez v1, :cond_3

    .line 1140
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v3, :cond_3

    .line 1141
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_0

    .line 1142
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1143
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1144
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    .line 1146
    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    .line 1147
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1146
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1151
    :cond_0
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int v2, v0, v1

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    .line 1157
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_3
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .line 1168
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    .line 1171
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1173
    :cond_1
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    :goto_0
    return v1
.end method

.method protected computeVerticalScrollExtent()I
    .locals 5

    .line 1038
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1039
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v2, :cond_3

    .line 1040
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x64

    .line 1043
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1044
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1045
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v4, v4, 0x64

    .line 1047
    div-int/2addr v4, v1

    add-int/2addr v2, v4

    :cond_0
    sub-int/2addr v0, v3

    .line 1050
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1052
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1054
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 4

    .line 1067
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 1068
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    if-lez v1, :cond_3

    .line 1069
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v3, :cond_3

    .line 1070
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_0

    .line 1071
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1072
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1073
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    .line 1075
    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    .line 1076
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1075
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1080
    :cond_0
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int v2, v0, v1

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    .line 1086
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_3
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1097
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    .line 1100
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1102
    :cond_1
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    :goto_0
    return v1
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "id"
        }
    .end annotation

    .line 1782
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1527
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_0

    .line 1529
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1532
    :cond_0
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 1535
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1689
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->drawableStateChanged()V

    .line 1690
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down"
        }
    .end annotation
.end method

.method findClosestMotionRow(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 2248
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowX(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2254
    :cond_1
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method findClosestMotionRowY(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 2224
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowY(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2230
    :cond_1
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method abstract findMotionRowX(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation
.end method

.method abstract findMotionRowY(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 2778
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 2783
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .line 1198
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1199
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_2

    .line 1200
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1207
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1208
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v2

    .line 1209
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1210
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingBottom()I

    move-result v4

    sub-int v5, v2, v4

    if-le v0, v5, :cond_2

    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float v1, v0, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public getCacheColorHint()I
    .locals 1

    .line 2895
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 763
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 764
    invoke-virtual {p0, v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 767
    :cond_0
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .line 1218
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1219
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_2

    .line 1220
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1227
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1228
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1229
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_2

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float v1, v0, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public getListPaddingBottom()I
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .line 1236
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1237
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_2

    .line 1238
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1241
    :cond_0
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1245
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1246
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v2

    .line 1247
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1248
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingRight()I

    move-result v4

    sub-int v5, v2, v4

    if-le v0, v5, :cond_2

    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float v1, v0, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public getScrollDirectionLandscape()I
    .locals 1

    .line 2863
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getScrollDirectionPortrait()I
    .locals 1

    .line 2837
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1383
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1384
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 2868
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .line 1180
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1181
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-eqz v0, :cond_2

    .line 1182
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1189
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1190
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1191
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_2

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float v1, v0, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public getTranscriptMode()I
    .locals 1

    .line 2811
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 9

    .line 2286
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_c

    .line 2294
    iget-boolean v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNeedSync:Z

    if-eqz v4, :cond_7

    .line 2296
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNeedSync:Z

    .line 2298
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTranscriptMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    if-ne v4, v3, :cond_0

    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 2300
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOldItemCount:I

    if-lt v4, v6, :cond_0

    goto :goto_2

    .line 2305
    :cond_0
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncMode:I

    const/4 v6, 0x5

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_1

    goto :goto_3

    .line 2346
    :cond_1
    iput v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 2347
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    return-void

    .line 2307
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2312
    iput v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 2313
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    return-void

    .line 2319
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findSyncPosition()I

    move-result v4

    if-ltz v4, :cond_7

    .line 2322
    invoke-virtual {p0, v4, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ne v7, v4, :cond_7

    .line 2325
    iput v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    .line 2326
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mIsVertical:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v0

    .line 2327
    :goto_0
    iget-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncSize:J

    int-to-long v7, v0

    cmp-long v0, v1, v7

    if-nez v0, :cond_5

    .line 2330
    iput v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 2334
    :cond_5
    iput v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 2338
    :goto_1
    invoke-virtual {p0, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    .line 2301
    :cond_6
    :goto_2
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    return-void

    .line 2353
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2355
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_8

    add-int/lit8 v4, v0, -0x1

    :cond_8
    if-gez v4, :cond_9

    const/4 v4, 0x0

    .line 2366
    :cond_9
    invoke-virtual {p0, v4, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_a

    .line 2369
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    .line 2373
    :cond_a
    invoke-virtual {p0, v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_c

    .line 2375
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    .line 2382
    :cond_b
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    if-ltz v0, :cond_c

    return-void

    .line 2390
    :cond_c
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mStackFromBottom:Z

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x1

    :goto_4
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    const/4 v0, -0x1

    .line 2391
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 2392
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedRowId:J

    .line 2393
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNextSelectedPosition:I

    .line 2394
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNextSelectedRowId:J

    .line 2395
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNeedSync:Z

    .line 2396
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->checkSelectionChanged()V

    return-void
.end method

.method hideSelector()V
    .locals 3

    .line 2180
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2181
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 2182
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    .line 2184
    :cond_0
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNextSelectedPosition:I

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 2185
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    .line 2187
    :cond_1
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 2188
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    .line 2189
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedTop:I

    .line 2190
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    .line 2261
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    .line 2262
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->rememberSyncState()V

    .line 2263
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->requestLayout()V

    .line 2264
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .line 693
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnScrollListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 694
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;->onScroll(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;III)V

    :cond_0
    return-void
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 708
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 673
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 785
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method keyPressed()V
    .locals 4

    .line 1643
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1648
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 1649
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v1, :cond_7

    .line 1650
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1652
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1655
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 1656
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1658
    :cond_3
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 1660
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isLongClickable()Z

    move-result v1

    .line 1661
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1662
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 1664
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 1665
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 1664
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 1667
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 1670
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v0, :cond_7

    .line 1671
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;

    if-nez v0, :cond_6

    .line 1672
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;

    .line 1674
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1675
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mPendingCheckForKeyLongPress:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return-void
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "isScrap"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1447
    aput-boolean v0, p2, v0

    .line 1450
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1459
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eq p1, v1, :cond_0

    .line 1467
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {p2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1468
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCacheColorHint:I

    if-eqz p2, :cond_2

    .line 1469
    invoke-virtual {p1, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1476
    aput-boolean v1, p2, v0

    .line 1477
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0

    .line 1480
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1481
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCacheColorHint:I

    if-eqz p2, :cond_2

    .line 1482
    invoke-virtual {p1, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1736
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onAttachedToWindow()V

    .line 1738
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraSpace"
        }
    .end annotation

    .line 1698
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 1700
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 1706
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 1711
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1713
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1714
    aget v2, p1, v1

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 1722
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1750
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onDetachedFromWindow()V

    .line 1756
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->clear()V

    .line 1758
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
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

    .line 1006
    invoke-super {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 1007
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
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

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1923
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 1926
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1928
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1930
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1932
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1933
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1935
    :cond_2
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    return v1

    .line 1940
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
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
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1274
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->orientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setupScrollInfo()V

    .line 1277
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onLayout(ZIIII)V

    const/4 p2, 0x1

    .line 1278
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mInLayout:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1282
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->forceLayout()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1284
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->markChildrenDirty()V

    .line 1287
    :cond_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    .line 1288
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mInLayout:Z

    return-void
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

    .line 1256
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->orientationChanged()Z

    .line 1258
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 1259
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->useDefaultSelector()V

    .line 1261
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1262
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1263
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1264
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1265
    iget p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 931
    check-cast p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;

    .line 933
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 934
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    .line 936
    iget v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncSize:J

    .line 938
    iget-wide v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 939
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNeedSync:Z

    .line 940
    iget-wide v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->selectedId:J

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncRowId:J

    .line 941
    iget v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->position:I

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    .line 942
    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->viewTop:I

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSpecificTop:I

    const/4 p1, 0x0

    .line 943
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncMode:I

    goto :goto_0

    .line 944
    :cond_0
    iget-wide v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->firstId:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v1, -0x1

    .line 945
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 947
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    .line 948
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNeedSync:Z

    .line 949
    iget-wide v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncRowId:J

    .line 950
    iget v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncPosition:I

    .line 951
    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->viewTop:I

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSpecificTop:I

    .line 952
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSyncMode:I

    .line 957
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .line 883
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 885
    new-instance v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 887
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 888
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getSelectedItemId()J

    move-result-wide v3

    .line 889
    iput-wide v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->selectedId:J

    .line 890
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v5

    iput v5, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->height:I

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v5

    if-ltz v9, :cond_1

    .line 894
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedTop:I

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->viewTop:I

    .line 895
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->position:I

    .line 896
    iput-wide v7, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->firstId:J

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    .line 900
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 901
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v2, :cond_2

    .line 902
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->viewTop:I

    goto :goto_1

    .line 904
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->viewTop:I

    .line 906
    :goto_1
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    iput v0, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->position:I

    .line 907
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 909
    :cond_3
    iput v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->viewTop:I

    .line 910
    iput-wide v7, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->firstId:J

    .line 911
    iput v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;->position:I

    :goto_2
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1546
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 1547
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    .line 1548
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->rememberSyncState()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInTouchMode"
        }
    .end annotation

    .line 2046
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->onTouchModeChanged(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasWindowFocus"
        }
    .end annotation

    .line 2109
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onWindowFocusChanged(Z)V

    .line 2110
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public pointToPosition(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1958
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1960
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1964
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1966
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1967
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1968
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1969
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1970
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public pointToRowId(II)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1987
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1989
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sel"
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1495
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1496
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->positionSelector(IIII)V

    .line 1499
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mIsChildViewEnabled:Z

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq p1, v0, :cond_0

    xor-int/lit8 p1, v0, 0x1

    .line 1501
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mIsChildViewEnabled:Z

    .line 1502
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2906
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 2907
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->access$800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2911
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-eqz v4, :cond_0

    .line 2914
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2915
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 2918
    invoke-interface {v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2922
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 2923
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .line 2200
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    .line 2202
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    .line 2204
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2205
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .line 2099
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnScrollListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2101
    invoke-interface {v0, p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;I)V

    .line 2102
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLastScrollState:I

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1015
    invoke-super {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->resetList()V

    .line 805
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->requestLayout()V

    .line 806
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .line 1023
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 1024
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 1025
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    .line 1026
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mNeedSync:Z

    const/4 v1, -0x1

    .line 1027
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 1028
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOldSelectedRowId:J

    .line 1029
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 1030
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setNextSelectedPositionInt(I)V

    .line 1031
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedTop:I

    .line 1032
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1033
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 1

    .line 2281
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 2878
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1

    .line 2879
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCacheColorHint:I

    .line 2880
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2882
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2884
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTop"
        }
    .end annotation

    .line 1599
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setOnScrollListener(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 682
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnScrollListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

    .line 683
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setRecyclerListener(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2986
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->access$802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    return-void
.end method

.method public setScrollDirectionLandscape(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 2848
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2849
    :goto_0
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyLandscape:Z

    if-eq v0, p1, :cond_1

    .line 2851
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setupScrollInfo()V

    .line 2852
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->resetList()V

    .line 2853
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->clear()V

    :cond_1
    return-void
.end method

.method public setScrollDirectionPortrait(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 2822
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2823
    :goto_0
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVerticallyPortrait:Z

    if-eq v0, p1, :cond_1

    .line 2825
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setupScrollInfo()V

    .line 2826
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->resetList()V

    .line 2827
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->clear()V

    :cond_1
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "up",
            "down",
            "left",
            "right"
        }
    .end annotation

    .line 1681
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    .line 1682
    iput-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    .line 1683
    iput-object p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    .line 1684
    iput-object p4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 724
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V

    .line 727
    :cond_0
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method abstract setSelectionInt(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public setSelector(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resID"
        }
    .end annotation

    .line 1609
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sel"
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1614
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1615
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1617
    :cond_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1618
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1619
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1620
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionLeftPadding:I

    .line 1621
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionTopPadding:I

    .line 1622
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionRightPadding:I

    .line 1623
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectionBottomPadding:I

    .line 1624
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1625
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 662
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackFromBottom"
        }
    .end annotation

    .line 796
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 797
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mStackFromBottom:Z

    .line 798
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 2801
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTranscriptMode:I

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .line 1579
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalView"
        }
    .end annotation

    .line 1892
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    const/4 v0, 0x0

    if-ltz v6, :cond_1

    .line 1894
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 1897
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 1902
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    .line 1903
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1902
    invoke-virtual {p0, v0, v6, v7, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1905
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distance",
            "duration"
        }
    .end annotation

    .line 2145
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 2121
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->smoothScrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "boundPosition"
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->smoothScrollToPosition(II)V

    return-void
.end method

.method public startScrollIfNeeded(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 2041
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchHandler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->startScrollIfNeeded(I)Z

    move-result p1

    return p1
.end method

.method touchModeDrawsInPressedState()Z
    .locals 3

    .line 1562
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method updateScrollIndicators()V
    .locals 6

    .line 1315
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v0, :cond_4

    .line 1318
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 1322
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1323
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1328
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-eqz v0, :cond_9

    .line 1333
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1336
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_7

    if-lez v0, :cond_7

    sub-int/2addr v0, v2

    .line 1340
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 1344
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/4 v4, 0x4

    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    :cond_9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v0, :cond_e

    .line 1350
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    .line 1354
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 1355
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    .line 1360
    :cond_c
    :goto_7
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    const/4 v0, 0x4

    :goto_8
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    :cond_e
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollVertically:Z

    if-nez v0, :cond_13

    .line 1365
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 1368
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    if-nez v4, :cond_11

    if-lez v0, :cond_11

    sub-int/2addr v0, v2

    .line 1372
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_10

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    move v4, v2

    .line 1376
    :cond_11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_12

    const/4 v1, 0x0

    :cond_12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
