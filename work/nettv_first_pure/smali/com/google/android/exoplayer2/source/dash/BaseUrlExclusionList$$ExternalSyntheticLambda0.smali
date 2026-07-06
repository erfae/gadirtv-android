.class public final synthetic Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;->INSTANCE$2:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    check-cast p2, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->$r8$lambda$fHu7dMf5JFxgXhjPMION0osau7U(Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->$r8$lambda$fyxDHfz3hA5wz9LunlAhNpFsO64(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)I

    move-result p1

    return p1

    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->$r8$lambda$fGGQpb4lm4rCLKn4-zylNcQiqeo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
