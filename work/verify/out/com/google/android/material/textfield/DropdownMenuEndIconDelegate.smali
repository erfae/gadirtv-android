.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final DEFAULT_ANIMATION_FADE_IN_DURATION:I = 0x43

.field private static final DEFAULT_ANIMATION_FADE_OUT_DURATION:I = 0x32

.field private static final IS_LOLLIPOP:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x15
    .end annotation
.end field


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final animationFadeInDuration:I

.field private final animationFadeInterpolator:Landroid/animation/TimeInterpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final animationFadeOutDuration:I

.field private autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dropdownPopupActivatedAt:J

.field private dropdownPopupDirty:Z

.field private editTextHasFocus:Z

.field private fadeInAnim:Landroid/animation/ValueAnimator;

.field private fadeOutAnim:Landroid/animation/ValueAnimator;

.field private isEndIconChecked:Z

.field private final onEditTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final onIconClickListener:Landroid/view/View$OnClickListener;

.field private final touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method public static synthetic $r8$lambda$4SBpO57tjhDSopV0DemkySdxojY(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$getAlphaAnimator$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BqmxB1OD2-UBtyLLYrjkb1pVKko(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$setUpDropdownShowHideBehavior$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CCm9KkEwkNKH7i3YuOdE94QyO7w(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GC4Z4aSLx1o4GNefaOGyXn6tdak(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gy89nJjcMrMnAKlMjFZkWRzwff0(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$setUpDropdownShowHideBehavior$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$az2bGAstjYQVJ0xTZU5to9JFwf8(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$afterEditTextChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$s0Go8aDJW6wdKEyjtVLy3FzDAsw(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->lambda$new$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .registers 5
    .param p1    # Lcom/google/android/material/textfield/EndCompoundLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 2
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onEditTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 4
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    const/16 v2, 0x43

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->animationFadeInDuration:I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x32

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->animationFadeOutDuration:I

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private static castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    return-object p0

    .line 3
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p1

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private initAnimators()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->animationFadeInDuration:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_24

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 2
    iget v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->animationFadeOutDuration:I

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isDropdownPopupActive()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_16

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method private synthetic lambda$afterEditTextChanged$3()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return-void
.end method

.method private synthetic lambda$getAlphaAnimator$6(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Z)V
    .registers 3

    .line 1
    iput-boolean p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->editTextHasFocus:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    if-nez p2, :cond_d

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    :cond_d
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    :goto_11
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_14
    return-void
.end method

.method private synthetic lambda$setUpDropdownShowHideBehavior$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    iput-boolean p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 4
    :cond_10
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateDropdownPopupDirty()V

    :cond_16
    return p2
.end method

.method private synthetic lambda$setUpDropdownShowHideBehavior$5()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateDropdownPopupDirty()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    return-void
.end method

.method private setEndIconChecked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eq v0, p1, :cond_10

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_10
    return-void
.end method

.method private setUpDropdownShowHideBehavior()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 4
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    return-void
.end method

.method private showHideDropdown()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 4
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    if-nez v0, :cond_3c

    .line 5
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_1e

    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    goto :goto_27

    .line 7
    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 9
    :goto_27
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eqz v0, :cond_36

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_3e

    .line 12
    :cond_36
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_3e

    .line 13
    :cond_3c
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    :goto_3e
    return-void
.end method

.method private updateDropdownPopupDirty()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    return-void
.end method


# virtual methods
.method public afterEditTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 5
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getIconContentDescriptionResId()I
    .registers 2

    sget v0, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    return v0
.end method

.method public final getIconDrawableResId()I
    .registers 2

    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    goto :goto_9

    :cond_7
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_arrow_drop_down:I

    :goto_9
    return v0
.end method

.method public final getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onEditTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public final getOnIconClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTouchExplorationStateChangeListener()Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    return-object v0
.end method

.method public final isBoxBackgroundModeSupported(I)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public final isIconActivated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->editTextHasFocus:Z

    return v0
.end method

.method public final isIconChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    return v0
.end method

.method public onEditTextAttached(Landroid/widget/EditText;)V
    .registers 4
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    if-nez p1, :cond_29

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 7
    :cond_29
    iget-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 2
    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    :cond_11
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isShowingHintText()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateDropdownPopupDirty()V

    :cond_1d
    return-void
.end method

.method public final setUp()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initAnimators()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public final tearDown()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_11

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_11
    return-void
.end method
