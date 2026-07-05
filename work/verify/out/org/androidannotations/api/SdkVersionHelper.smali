.class public Lorg/androidannotations/api/SdkVersionHelper;
.super Ljava/lang/Object;
.source "SdkVersionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/SdkVersionHelper$HelperInternal;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkInt()I
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    return v0

    .line 2
    :cond_c
    # invokes: Lorg/androidannotations/api/SdkVersionHelper$HelperInternal;->getSdkIntInternal()I
    invoke-static {}, Lorg/androidannotations/api/SdkVersionHelper$HelperInternal;->access$000()I

    move-result v0

    return v0
.end method
