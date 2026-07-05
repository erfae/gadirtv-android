.class public final synthetic Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->$r8$lambda$o4HkHby7CGP2uKSMFY_jNQO47TQ(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->$r8$lambda$JglfL2r_UQrp7I6uIFonmvSU7dA(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->$r8$lambda$tYSQPZMO83x5k0C9LPAWDL-Rmyo(Lcom/google/android/material/sidesheet/SideSheetBehavior;ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p1

    return p1
.end method
