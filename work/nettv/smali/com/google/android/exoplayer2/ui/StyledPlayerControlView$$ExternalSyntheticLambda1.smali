.class public final synthetic Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->$r8$lambda$yF0wxNFGTOK6vMLq5xLUexTMVVQ(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;IIIIIIII)V

    return-void

    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->$r8$lambda$Vs5assiPBGhh1Xvnalr4DNIJOIQ(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;IIIIIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
