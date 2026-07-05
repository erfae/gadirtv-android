.class public final synthetic Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->$r8$lambda$ycpHjhDocuatJlJAPKZepsuRHG8(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Landroid/view/View;Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->$r8$lambda$s0Go8aDJW6wdKEyjtVLy3FzDAsw(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/view/View;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
