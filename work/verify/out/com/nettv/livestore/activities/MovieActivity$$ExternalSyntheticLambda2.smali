.class public final synthetic Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
.implements Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;
.implements Lcom/nettv/livestore/remote/GetSubtitleLoginRequest$OnGetLinkModelListener;
.implements Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnGetLinkModelResult(Lorg/json/JSONObject;I)V
    .registers 4

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/MovieActivity;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/activities/MovieActivity;->$r8$lambda$maGMyf4czg_eU4HmKE-OZ-aokag(Lcom/nettv/livestore/activities/MovieActivity;Lorg/json/JSONObject;I)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/SeriesActivity;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/activities/SeriesActivity;->$r8$lambda$6kGPXyh9Nwg7Tpsrfv8QwjRRsmA(Lcom/nettv/livestore/activities/SeriesActivity;Lorg/json/JSONObject;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->$r8$lambda$daPFkhyilSrce3G1vNzNsPVQBCs(Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public final getInterpolation(F)F
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/Transition;->$r8$lambda$jXM2vb2eju1USPXMc6tRUnJaYj0(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/CategoryActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->$r8$lambda$FPVZ_F8TW7u2x7jYKQloKOo-zt8(Lcom/nettv/livestore/activities/CategoryActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public final onChangeColor()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;

    invoke-static {v0}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->$r8$lambda$hx1PIaE27ANZerieZquwTAqNhw4(Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;)V

    return-void
.end method

.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->$r8$lambda$KpUNHX7G_3SrNfrFIzMfcFEp1Cw(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final onDefaultDisplayChanged(Landroid/view/Display;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->$r8$lambda$A5Zm0DOJniOJatrcB4x11ZTkanw(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    return-void
.end method

.method public final onRetryClick()V
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->$r8$lambda$9YgBcxxgg3-8WhT1GBG8u4CEJG8(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-static {v0}, Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;->$r8$lambda$w_QqIxtGRDsqCM7MJZToVP3UGG8(Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x8
        :pswitch_6
    .end packed-switch
.end method

.method public final perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->$r8$lambda$xAn-b-a4Gk3yqfHJB7SUvsig1zc(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p1

    return p1
.end method

.method public final timeUsToTargetTime(J)J
    .registers 4

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
