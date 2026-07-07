.class public abstract Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;
.super Landroid/view/ViewGroup;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterContextMenuInfo;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field protected mContext:Landroid/content/Context;

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mInLayout:Z

.field protected mIsVertical:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J

.field mSyncSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 68
    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    .line 78
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 115
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mInLayout:Z

    const/4 v3, -0x1

    .line 141
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 147
    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 152
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    .line 158
    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    .line 190
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 195
    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 214
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mBlockLayoutRequests:Z

    .line 218
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 68
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    .line 78
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 115
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mInLayout:Z

    const/4 v2, -0x1

    .line 141
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 147
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 152
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    .line 158
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    .line 190
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 195
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 214
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mBlockLayoutRequests:Z

    .line 223
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 68
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    .line 78
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 115
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mInLayout:Z

    const/4 p3, -0x1

    .line 141
    iput p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 147
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 152
    iput p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    .line 158
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    .line 190
    iput p3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 195
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedRowId:J

    .line 214
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mBlockLayoutRequests:Z

    .line 228
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/os/Parcelable;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)Landroid/os/Parcelable;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 7

    .line 855
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 860
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    .line 864
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    .line 863
    invoke-interface/range {v1 .. v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V

    :goto_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->isInFilterMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 707
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 708
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 709
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 712
    :cond_1
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->setVisibility(I)V

    .line 718
    :goto_0
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDataChanged:Z

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->onLayout(ZIIII)V

    goto :goto_1

    .line 722
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 723
    :cond_3
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 432
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "index"
        }
    .end annotation

    .line 444
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 470
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "params"
        }
    .end annotation

    .line 456
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected canAnimate()Z
    .locals 1

    .line 905
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method checkFocus()V
    .locals 5

    .line 682
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 683
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 684
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    .line 688
    iget-boolean v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_5

    .line 689
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 690
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    .line 691
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->updateEmptyStatus(Z)V

    :cond_8
    return-void
.end method

.method checkSelectionChanged()V
    .locals 5

    .line 972
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedRowId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->selectionChanged()V

    .line 974
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedPosition:I

    .line 975
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldSelectedRowId:J

    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 762
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 754
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method findSyncPosition()I
    .locals 17

    move-object/from16 v0, p0

    .line 988
    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 994
    :cond_0
    iget-wide v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    .line 995
    iget v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncPosition:I

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x0

    .line 1003
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    .line 1004
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    add-long/2addr v8, v10

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v10

    if-nez v10, :cond_2

    return v2

    :cond_2
    move v11, v5

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    .line 1032
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v8

    if-gtz v16, :cond_b

    .line 1033
    invoke-interface {v10, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v16, v14, v3

    if-nez v16, :cond_4

    return v5

    :cond_4
    if-ne v11, v1, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-nez v12, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    goto :goto_5

    :cond_7
    if-nez v15, :cond_a

    if-eqz v13, :cond_8

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    if-nez v14, :cond_9

    if-nez v13, :cond_3

    if-nez v15, :cond_3

    :cond_9
    add-int/lit8 v12, v12, -0x1

    move v5, v12

    const/4 v13, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v5, v11

    goto :goto_0

    :cond_b
    :goto_5
    return v2
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 558
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 734
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 612
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    .line 574
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 586
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    iget p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 542
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    .line 544
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 545
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 528
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 519
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 5

    .line 909
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_5

    .line 917
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    if-eqz v3, :cond_0

    .line 920
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 924
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->findSyncPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 927
    invoke-virtual {p0, v3, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 930
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->setNextSelectedPositionInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    .line 937
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 948
    :cond_2
    invoke-virtual {p0, v4, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-gez v0, :cond_3

    .line 951
    invoke-virtual {p0, v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->lookForSelectablePosition(IZ)I

    move-result v0

    :cond_3
    if-ltz v0, :cond_4

    .line 954
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->setNextSelectedPositionInt(I)V

    .line 955
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->checkSelectionChanged()V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    const/4 v0, -0x1

    .line 962
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 963
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    .line 964
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 965
    iput-wide v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 966
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 967
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->checkSelectionChanged()V

    :cond_6
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isVertical()Z
    .locals 1

    .line 1184
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
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

    return p1
.end method

.method public offsetChildrenLeftAndRight(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1171
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1174
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1175
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1160
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1161
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    .line 508
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mLayoutHeight:I

    .line 509
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mLayoutWidth:I

    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 8
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

    .line 282
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->playSoundEffect(I)V

    .line 284
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;->onItemClick(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/view/View;IJ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method rememberSyncState()V
    .locals 5

    .line 1109
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 1111
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 1112
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncSize:J

    goto :goto_0

    .line 1114
    :cond_0
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mLayoutWidth:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncSize:J

    .line 1116
    :goto_0
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 1118
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1119
    iget-wide v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    .line 1120
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncPosition:I

    if-eqz v0, :cond_2

    .line 1122
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    if-eqz v1, :cond_1

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSpecificTop:I

    goto :goto_1

    .line 1125
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSpecificTop:I

    .line 1128
    :cond_2
    :goto_1
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncMode:I

    goto :goto_4

    .line 1131
    :cond_3
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1132
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1133
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    if-ltz v3, :cond_4

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1134
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    goto :goto_2

    :cond_4
    const-wide/16 v2, -0x1

    .line 1136
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    .line 1138
    :goto_2
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncPosition:I

    if-eqz v1, :cond_6

    .line 1140
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 1141
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSpecificTop:I

    goto :goto_3

    .line 1143
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSpecificTop:I

    .line 1146
    :cond_6
    :goto_3
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncMode:I

    :cond_7
    :goto_4
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 482
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeViewAt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 493
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method selectionChanged()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 833
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->fireOnSelected()V

    goto :goto_1

    .line 838
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectionNotifier:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 839
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$1;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectionNotifier:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectionNotifier:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;

    invoke-virtual {v0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emptyView"
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mEmptyView:Landroid/view/View;

    .line 629
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 630
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 631
    :goto_1
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->updateEmptyStatus(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 658
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 660
    :goto_1
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDesiredFocusableState:Z

    if-nez p1, :cond_2

    .line 662
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_4

    .line 665
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 671
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 673
    :goto_1
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_2

    .line 675
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDesiredFocusableState:Z

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 678
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method protected setIsVertical(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertical"
        }
    .end annotation

    .line 1180
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mIsVertical:Z

    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1095
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 1096
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 1098
    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncMode:I

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    .line 1099
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncPosition:I

    .line 1100
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 745
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnItemClickListener(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->setLongClickable(Z)V

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemLongClickListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOnItemSelectedListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1084
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    .line 1085
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    return-void
.end method

.method public abstract setSelection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method
