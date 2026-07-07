.class public interface abstract Lcom/google/vr/cardboard/VrParamsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
.end method

.method public abstract readDisplayParams()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
.end method

.method public abstract readRecentHeadsets()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParamsList;
.end method

.method public abstract readSdkConfigurationParams(Lcom/google/vr/sdk/proto/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
.end method

.method public abstract readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;
.end method

.method public abstract updateUserPrefs(Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;)Z
.end method

.method public abstract writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z
.end method
