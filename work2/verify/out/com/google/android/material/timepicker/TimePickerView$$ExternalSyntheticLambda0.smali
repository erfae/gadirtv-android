.class public final synthetic Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .registers 5

    iget v0, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerView;->$r8$lambda$qcr5SAw_DiQbOm3iFiOG_eXPQ9M(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->$r8$lambda$qLct7ZDGXjHV1i86sX6BxI1uiU8(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
