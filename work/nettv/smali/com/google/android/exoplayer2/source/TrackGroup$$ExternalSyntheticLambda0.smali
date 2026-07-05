.class public final synthetic Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$3:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$4:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE$2:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE$3:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE$4:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->$r8$lambda$h-Fs3IL9V0TIHwUdHiPGyNB2vwM(Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;)V

    return-void

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/SpannedData;->$r8$lambda$JNb-vRhK52ewUFOuqtqABNtXO9o(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final createProgressiveMediaExtractor(Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-object v0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->$r8$lambda$OSucO-GokAXNCAKDiwNz_o1YsYw(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->$r8$lambda$Ux6uYjhjCac6ofzNm8CE0IjVCHM(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
