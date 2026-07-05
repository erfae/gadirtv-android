.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final defaultPositionUs:J

.field private final durationUs:J

.field private final firstPeriodIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final timelines:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZJJLjava/lang/Object;)V
    .locals 0
    .param p11    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;ZZJJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    .line 6
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isSeekable:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isDynamic:Z

    .line 8
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->durationUs:J

    .line 9
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->defaultPositionUs:J

    .line 10
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->manifest:Ljava/lang/Object;

    return-void
.end method

.method private getChildIndexByPeriodIndex(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->access$100(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Timeline;

    sub-int v1, p1, v1

    invoke-virtual {v2, v1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v1, 0x0

    .line 4
    iput v1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    if-eqz p3, :cond_0

    .line 6
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->access$300(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->access$100(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Timeline;

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    .line 5
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v0

    .line 6
    invoke-virtual {v2, v1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v0, 0x0

    .line 7
    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    .line 9
    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    return-object p2
.end method

.method public getPeriodCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->firstPeriodIndices:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->timelines:Lcom/google/common/collect/ImmutableList;

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Timeline;

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->access$300(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->manifest:Ljava/lang/Object;

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isSeekable:Z

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->isDynamic:Z

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->defaultPositionUs:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->durationUs:J

    move-wide/from16 v16, v5

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->getPeriodCount()I

    move-result v5

    add-int/lit8 v19, v5, -0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;->periodOffsetsInWindowUs:Lcom/google/common/collect/ImmutableList;

    const/4 v6, 0x0

    .line 3
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    move-wide/from16 v20, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/16 v18, 0x0

    .line 4
    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
