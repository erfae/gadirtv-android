.class public final Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "TrackSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;,
        Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;
    }
.end annotation


# instance fields
.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final tabFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tabTrackTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private titleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabTrackTypes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)Landroid/util/SparseArray;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabTrackTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getTrackTypeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createForMappedTrackInfoAndParameters(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "mappedTrackInfo",
            "initialParameters",
            "allowAdaptiveSelections",
            "allowMultipleOverrides",
            "onClickListener",
            "onDismissListener"
        }
    .end annotation

    .line 130
    new-instance v8, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-direct {v8}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;-><init>()V

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 131
    invoke-direct/range {v0 .. v7}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->init(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v8
.end method

.method public static createForTrackSelector(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Landroid/content/DialogInterface$OnDismissListener;)Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackSelector",
            "onDismissListener"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 77
    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v4

    .line 79
    new-instance v7, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$TrackSelectionDialog$Amd4zodJOXE_p0oO8igylFuBPnA;

    invoke-direct {v7, v4, v3, v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$TrackSelectionDialog$Amd4zodJOXE_p0oO8igylFuBPnA;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    const v2, 0x7f140453

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->init(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method private static getTrackTypeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "trackType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x7f1401ae

    .line 266
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p1, 0x7f1401af

    .line 262
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f1401ad

    .line 264
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "mappedTrackInfo",
            "initialParameters",
            "allowAdaptiveSelections",
            "allowMultipleOverrides",
            "onClickListener",
            "onDismissListener"
        }
    .end annotation

    .line 157
    iput p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->titleId:I

    .line 158
    iput-object p6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 159
    iput-object p7, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 p1, 0x0

    .line 160
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result p6

    if-ge p1, p6, :cond_1

    .line 161
    invoke-static {p2, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->showTabForRenderer(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 162
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p6

    .line 163
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p7

    .line 164
    new-instance v7, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;

    invoke-direct {v7}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;-><init>()V

    .line 168
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v3

    .line 169
    invoke-virtual {p3, p1, p7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v4

    move-object v0, v7

    move-object v1, p2

    move v2, p1

    move v5, p4

    move v6, p5

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->init(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;IZLcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;ZZ)V

    .line 172
    iget-object p7, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {p7, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    iget-object p7, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabTrackTypes:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p7, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isSupportedTrackType(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method static synthetic lambda$createForTrackSelector$0(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p0

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 89
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p2, p5}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getIsDisabled(I)Z

    move-result v1

    .line 90
    invoke-virtual {v0, p5, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 94
    invoke-virtual {p2, p5}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getOverrides(I)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 99
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 96
    invoke-virtual {p0, p5, v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p3, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void
.end method

.method private static showTabForRenderer(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "rendererIndex"
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 241
    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p0

    .line 245
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->isSupportedTrackType(I)Z

    move-result p0

    return p0
.end method

.method public static willHaveContent(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackSelector"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->willHaveContent(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static willHaveContent(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mappedTrackInfo"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 58
    invoke-static {p0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->showTabForRenderer(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getIsDisabled(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererIndex"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;

    if-eqz p1, :cond_0

    .line 186
    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->isDisabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOverrides(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;

    if-nez p1, :cond_0

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$TrackSelectionViewFragment;->overrides:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public synthetic lambda$onCreateView$1$TrackSelectionDialog(Landroid/view/View;)V
    .locals 0

    .line 230
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$TrackSelectionDialog(Landroid/view/View;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 234
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 207
    new-instance p1, Landroidx/appcompat/app/AppCompatDialog;

    .line 208
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f150169

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 209
    iget v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->titleId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    const p3, 0x7f0e01ec

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b067c

    .line 223
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    const p3, 0x7f0b067d

    .line 224
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0b067a

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0b067b

    .line 226
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 227
    new-instance v3, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 228
    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 229
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->tabFragments:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v3, 0x1

    if-le p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 230
    new-instance p2, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$TrackSelectionDialog$fPWp5r3mxA2F38TQR1FRq4fm8So;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$TrackSelectionDialog$fPWp5r3mxA2F38TQR1FRq4fm8So;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance p2, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$TrackSelectionDialog$fUQNMdotEh2nUtshPbGOZH-JqMg;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$TrackSelectionDialog$fUQNMdotEh2nUtshPbGOZH-JqMg;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 215
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 216
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
