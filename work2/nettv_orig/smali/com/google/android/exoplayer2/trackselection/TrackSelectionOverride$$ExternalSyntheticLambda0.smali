.class public final synthetic Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$3:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;->INSTANCE$2:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;->INSTANCE$3:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->$r8$lambda$NvZ4OweqBCNRql1Yy7vv2wiHdEU(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->$r8$lambda$U98Wdd2EwvvSUOXBjakY0Uxo3EE(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->$r8$lambda$N4Pt-q4JuVCQBA7OXQkgjxWNK9U(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
