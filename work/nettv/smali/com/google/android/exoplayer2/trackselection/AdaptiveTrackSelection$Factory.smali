.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x2710

    const/16 v1, 0x61a8

    const v2, 0x3f333333    # 0.7f

    .line 1
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    .line 2
    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    const/high16 v7, 0x3f400000    # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .locals 9

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 9

    .line 3
    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 v7, 0x3f400000    # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 8
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 9
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    .line 10
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    .line 11
    iput p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 12
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 13
    iput-object p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public final createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->access$000([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 2
    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 4
    aget-object v6, v1, v5

    if-eqz v6, :cond_2

    .line 5
    iget-object v9, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v7, v9

    if-nez v7, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    array-length v7, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 7
    new-instance v7, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v9, v9, v4

    iget v6, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v7, v8, v9, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    move/from16 p4, v5

    goto :goto_1

    .line 8
    :cond_1
    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v10, v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Lcom/google/common/collect/ImmutableList;

    .line 10
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-object v7, v6

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v12, v11

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v14, v11

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    move/from16 p4, v5

    int-to-long v4, v11

    move-wide/from16 v16, v4

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    move/from16 v18, v4

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    move/from16 v19, v4

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    move/from16 v20, v4

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    move/from16 v21, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    move-object/from16 v23, v4

    move-object/from16 v11, p2

    invoke-direct/range {v7 .. v23}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    move-object v7, v6

    .line 11
    :goto_1
    aput-object v7, v3, p4

    goto :goto_3

    :cond_2
    :goto_2
    move/from16 p4, v5

    :goto_3
    add-int/lit8 v5, p4, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    return-object v3
.end method
