.class Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;
.super Ljava/lang/Object;
.source "TimePickerTextInputKeyController.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private keyListenerRunning:Z

.field private final minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final time:Lcom/google/android/material/timepicker/TimeModel;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 5
    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    return-void
.end method

.method private clearPrefilledText(Landroid/widget/EditText;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_14
    return-void
.end method

.method private moveSelection(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    return-void
.end method

.method private onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .registers 8

    .line 1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x7

    const/4 v3, 0x1

    if-lt p1, v2, :cond_25

    const/16 v2, 0x10

    if-gt p1, v2, :cond_25

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_25

    .line 3
    invoke-virtual {p3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_25

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, p2, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-eqz p1, :cond_2e

    const/16 p1, 0xc

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    return v3

    .line 6
    :cond_2e
    invoke-direct {p0, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->clearPrefilledText(Landroid/widget/EditText;)V

    return v1
.end method

.method private onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x43

    if-ne p1, v2, :cond_18

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_18

    .line 2
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    if-eqz p1, :cond_21

    const/16 p1, 0xa

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    return v0

    .line 4
    :cond_21
    invoke-direct {p0, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->clearPrefilledText(Landroid/widget/EditText;)V

    return v1
.end method


# virtual methods
.method public bind()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->hourLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->minuteLayoutComboView:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x10000005

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    const v2, 0x10000006

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_d

    const/16 p2, 0xc

    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->moveSelection(I)V

    :cond_d
    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    .line 3
    check-cast p1, Landroid/widget/EditText;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_18

    .line 5
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onMinuteKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    move-result p1

    goto :goto_1c

    .line 6
    :cond_18
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->onHourKeyPress(ILandroid/view/KeyEvent;Landroid/widget/EditText;)Z

    move-result p1

    .line 7
    :goto_1c
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->keyListenerRunning:Z

    return p1
.end method
