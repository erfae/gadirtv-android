.class public Landroidx/leanback/widget/SearchEditText;
.super Landroidx/leanback/widget/StreamingTextView;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/leanback/widget/SearchEditText;

    const-string v0, "SearchEditText"

    sput-object v0, Landroidx/leanback/widget/SearchEditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/leanback/R$style;->TextAppearance_Leanback_SearchTextEdit:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/StreamingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/leanback/widget/StreamingTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;->onKeyboardDismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Landroidx/leanback/widget/StreamingTextView;->reset()V

    return-void
.end method

.method public bridge synthetic setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/leanback/widget/StreamingTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public bridge synthetic setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/leanback/widget/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnKeyboardDismissListener(Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    return-void
.end method

.method public bridge synthetic updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/StreamingTextView;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateRecognizedText(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/StreamingTextView;->updateRecognizedText(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
