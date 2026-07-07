.class public interface abstract Landroidx/leanback/widget/GuidedActionAdapter$EditListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditListener"
.end annotation


# virtual methods
.method public abstract onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation
.end method

.method public abstract onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation
.end method

.method public abstract onImeClose()V
.end method

.method public abstract onImeOpen()V
.end method
