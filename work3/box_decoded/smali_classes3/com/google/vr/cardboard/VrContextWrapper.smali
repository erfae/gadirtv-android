.class public abstract Lcom/google/vr/cardboard/VrContextWrapper;
.super Landroid/content/MutableContextWrapper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public autoFadeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getVrComponent()Landroid/content/ComponentName;
.end method
