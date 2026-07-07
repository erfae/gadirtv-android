.class public Lcom/google/vr/cardboard/ContextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGetActivity(Landroid/content/Context;)Z
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 5
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 6
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    .line 12
    instance-of v0, p0, Lcom/google/vr/cardboard/VrContextWrapper;

    if-eqz v0, :cond_0

    .line 13
    check-cast p0, Lcom/google/vr/cardboard/VrContextWrapper;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrContextWrapper;->getVrComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
