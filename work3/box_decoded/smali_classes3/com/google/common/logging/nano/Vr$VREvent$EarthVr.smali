.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarthVr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$GeoLocation;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

.field public actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

.field public appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

.field public controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

.field public environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

.field public errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

.field public menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

.field public preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

.field public preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

.field public search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

.field public splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

.field public startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

.field public startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

.field public streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

.field public tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

.field public tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

.field public view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 6
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 14
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    .line 20
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    .line 21
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 5

    .line 24
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 33
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 35
    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    .line 36
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 42
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v1, :cond_6

    .line 43
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 44
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 46
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_8

    .line 47
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 48
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v1, :cond_9

    .line 49
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 50
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v1, :cond_a

    .line 51
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 52
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v1, :cond_c

    array-length v3, v1

    if-lez v3, :cond_c

    .line 53
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    const/4 v1, 0x0

    .line 54
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v4, v3

    if-ge v1, v4, :cond_c

    .line 55
    aget-object v4, v3, v1

    if-eqz v4, :cond_b

    .line 56
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v1, :cond_d

    .line 59
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 60
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v1, :cond_e

    .line 61
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 62
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-eqz v1, :cond_f

    .line 63
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    .line 64
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-eqz v1, :cond_10

    .line 65
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    .line 66
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-eqz v1, :cond_11

    .line 67
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    .line 68
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v1, :cond_13

    array-length v3, v1

    if-lez v3, :cond_13

    .line 69
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    .line 70
    :goto_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    array-length v3, v1

    if-ge v2, v3, :cond_13

    .line 71
    aget-object v3, v1, v2

    if-eqz v3, :cond_12

    .line 72
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_13
    return-object v0

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 123
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 126
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 129
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 132
    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    .line 135
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v1, :cond_4

    const/4 v3, 0x4

    .line 139
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_5

    const/4 v3, 0x5

    .line 142
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v1, :cond_6

    const/4 v3, 0x6

    .line 145
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_7

    const/4 v3, 0x7

    .line 148
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v1, :cond_8

    const/16 v3, 0x8

    .line 151
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v1, :cond_9

    const/16 v3, 0x9

    .line 154
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v1, 0x0

    .line 156
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 157
    aget-object v3, v3, v1

    if-eqz v3, :cond_a

    const/16 v4, 0xa

    .line 160
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v1, :cond_c

    const/16 v3, 0xb

    .line 164
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v1, :cond_d

    const/16 v3, 0xc

    .line 167
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-eqz v1, :cond_e

    const/16 v3, 0xd

    .line 170
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_f

    const/16 v3, 0xe

    .line 173
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    .line 175
    :goto_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    array-length v3, v1

    if-ge v2, v3, :cond_11

    .line 176
    aget-object v1, v1, v2

    if-eqz v1, :cond_10

    const/16 v3, 0xf

    .line 179
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 181
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-eqz v1, :cond_12

    const/16 v2, 0x10

    .line 183
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-eqz v1, :cond_13

    const/16 v2, 0x11

    .line 186
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 290
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 286
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x7a

    .line 272
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 273
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 274
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v3, :cond_4

    .line 276
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5

    .line 278
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;-><init>()V

    aput-object v1, v4, v3

    .line 279
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 280
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 282
    :cond_5
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;-><init>()V

    aput-object v0, v4, v3

    .line 283
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 284
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    goto :goto_0

    .line 267
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-nez v0, :cond_6

    .line 268
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 263
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-nez v0, :cond_7

    .line 264
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 259
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-nez v0, :cond_8

    .line 260
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 261
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 255
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-nez v0, :cond_9

    .line 256
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x52

    .line 241
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 242
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v2, :cond_a

    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    array-length v3, v2

    :goto_3
    add-int/2addr v0, v3

    .line 243
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v3, :cond_b

    .line 245
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    .line 247
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v1, v4, v3

    .line 248
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 249
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 251
    :cond_c
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v0, v4, v3

    .line 252
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 253
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    goto/16 :goto_0

    .line 236
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-nez v0, :cond_d

    .line 237
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 232
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-nez v0, :cond_e

    .line 233
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 234
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 228
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-nez v0, :cond_f

    .line 229
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 230
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 224
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-nez v0, :cond_10

    .line 225
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 226
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 220
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-nez v0, :cond_11

    .line 221
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 216
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-nez v0, :cond_12

    .line 217
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 218
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x1a

    .line 202
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 203
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-nez v2, :cond_13

    const/4 v3, 0x0

    goto :goto_5

    :cond_13
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 204
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v3, :cond_14

    .line 206
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_15

    .line 208
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v1, v4, v3

    .line 209
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 210
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 212
    :cond_15
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v0, v4, v3

    .line 213
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 214
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    goto/16 :goto_0

    .line 197
    :sswitch_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v0, :cond_16

    .line 198
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 199
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 193
    :sswitch_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v0, :cond_17

    .line 194
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 195
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0x12 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x6a -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 81
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 83
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 86
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    .line 88
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    .line 90
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    .line 92
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    .line 94
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v0, :cond_9

    const/16 v2, 0x9

    .line 96
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 98
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 99
    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    .line 101
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    .line 104
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 105
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v0, :cond_d

    const/16 v2, 0xc

    .line 106
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-eqz v0, :cond_e

    const/16 v2, 0xd

    .line 108
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 109
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v0, :cond_f

    const/16 v2, 0xe

    .line 110
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 113
    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    const/16 v2, 0xf

    .line 115
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-eqz v0, :cond_12

    const/16 v1, 0x10

    .line 118
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 119
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-eqz v0, :cond_13

    const/16 v1, 0x11

    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 121
    :cond_13
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
