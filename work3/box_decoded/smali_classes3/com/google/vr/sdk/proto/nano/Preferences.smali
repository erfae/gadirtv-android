.class public Lcom/google/vr/sdk/proto/nano/Preferences;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/Preferences$TrackingConfigurationParams;,
        Lcom/google/vr/sdk/proto/nano/Preferences$FrameReuseMonitoringParams;,
        Lcom/google/vr/sdk/proto/nano/Preferences$SafetyCylinderParams;,
        Lcom/google/vr/sdk/proto/nano/Preferences$DeveloperPrefs;,
        Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;,
        Lcom/google/vr/sdk/proto/nano/Preferences$ControllerConfigurationType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkControllerConfigurationTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ControllerConfigurationType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkControllerConfigurationTypeOrThrow([I)[I
    .locals 3

    .line 5
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 7
    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/Preferences;->checkControllerConfigurationTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
