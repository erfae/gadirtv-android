.class public Landroidx/leanback/transition/LeanbackTransitionHelper;
.super Ljava/lang/Object;
.source "LeanbackTransitionHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    sget v0, Landroidx/leanback/R$transition;->lb_title_in:I

    invoke-static {p0, v0}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    sget v0, Landroidx/leanback/R$transition;->lb_title_out:I

    invoke-static {p0, v0}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
