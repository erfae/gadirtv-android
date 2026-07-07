.class public final Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "TrackSelectionDialog.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackSelectionViewFragment"
.end annotation


# instance fields
.field private allowAdaptiveSelections:Z

.field private allowMultipleOverrides:Z

.field isDisabled:Z

.field private mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field overrides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private rendererIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 307
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->setRetainInstance(Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;IZLcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "rendererIndex",
            "initialIsDisabled",
            "initialOverride",
            "allowAdaptiveSelections",
            "allowMultipleOverrides"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 320
    iput p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->rendererIndex:I

    .line 321
    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    if-nez p4, :cond_0

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    .line 326
    iput-boolean p5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->allowAdaptiveSelections:Z

    .line 327
    iput-boolean p6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->allowMultipleOverrides:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00a1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0284

    .line 338
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    const/4 p2, 0x1

    .line 339
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setShowDisableOption(Z)V

    .line 340
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->allowMultipleOverrides:Z

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowMultipleOverrides(Z)V

    .line 341
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->allowAdaptiveSelections:Z

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowAdaptiveSelections(Z)V

    .line 342
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->rendererIndex:I

    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->init(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;IZLjava/util/List;Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;)V

    return-object p1
.end method

.method public onTrackSelectionChanged(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isDisabled",
            "overrides"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 355
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    .line 356
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    return-void
.end method
