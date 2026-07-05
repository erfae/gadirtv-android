.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$-CC;
.super Ljava/lang/Object;
.source "DateSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V
    .locals 2

    .line 1
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static varargs showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V
    .locals 5
    .param p0    # [Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;-><init>([Landroid/widget/EditText;)V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 4
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;)V

    return-void
.end method
