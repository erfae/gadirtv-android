.class public Lcom/verimatrix/vdc/VolumeUtils;
.super Ljava/lang/Object;
.source "VolumeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener2;,
        Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;,
        Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VolumeUtils"

.field private static instance:Lcom/verimatrix/vdc/VolumeUtils;


# instance fields
.field private lastLevel:I

.field private mSettingsContentObserver:Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/verimatrix/vdc/VolumeUtils;->lastLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/VolumeUtils;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/verimatrix/vdc/VolumeUtils;->lastLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/verimatrix/vdc/VolumeUtils;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/verimatrix/vdc/VolumeUtils;->lastLevel:I

    return p1
.end method

.method public static getCurrentVolumeLevel(Landroid/content/Context;)I
    .locals 1

    const-string v0, "audio"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 39
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public static getCurrentVolumeLevel(Landroid/content/Context;Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener2;)V
    .locals 2

    const-string v0, "audio"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {p0}, Lcom/verimatrix/vdc/VolumeUtils;->isWiredHeadsetOn(Landroid/media/AudioManager;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/verimatrix/vdc/VolumeUtils;->isBluetoothA2dpOn(Landroid/media/AudioManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-interface {p1, v0, p0}, Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener2;->onLevelChanged(IZ)V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/verimatrix/vdc/VolumeUtils;
    .locals 1

    .line 22
    sget-object v0, Lcom/verimatrix/vdc/VolumeUtils;->instance:Lcom/verimatrix/vdc/VolumeUtils;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/verimatrix/vdc/VolumeUtils;

    invoke-direct {v0}, Lcom/verimatrix/vdc/VolumeUtils;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/VolumeUtils;->instance:Lcom/verimatrix/vdc/VolumeUtils;

    .line 25
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/VolumeUtils;->instance:Lcom/verimatrix/vdc/VolumeUtils;

    return-object v0
.end method

.method public static isBluetoothA2dpOn(Landroid/media/AudioManager;)Z
    .locals 2

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/verimatrix/vdc/VolumeUtils;->isBluetoothA2dpOnLegacy(Landroid/media/AudioManager;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/verimatrix/vdc/VolumeUtils;->isBluetoothA2dpOnV26(Landroid/media/AudioManager;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isBluetoothA2dpOnLegacy(Landroid/media/AudioManager;)Z
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p0

    return p0
.end method

.method public static isBluetoothA2dpOnV26(Landroid/media/AudioManager;)Z
    .locals 1

    const/16 v0, 0x8

    .line 68
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWiredHeadsetOn(Landroid/media/AudioManager;)Z
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/verimatrix/vdc/VolumeUtils;->isWiredHeadsetOnLegacy(Landroid/media/AudioManager;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/verimatrix/vdc/VolumeUtils;->isWiredHeadsetOnV26(Landroid/media/AudioManager;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isWiredHeadsetOnLegacy(Landroid/media/AudioManager;)Z
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0

    return p0
.end method

.method public static isWiredHeadsetOnV26(Landroid/media/AudioManager;)Z
    .locals 1

    const/4 v0, 0x3

    .line 51
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getVolumeLevelChanges(Landroid/content/Context;Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;)V
    .locals 2

    .line 33
    new-instance v0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;-><init>(Lcom/verimatrix/vdc/VolumeUtils;Landroid/content/Context;Landroid/os/Handler;Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils;->mSettingsContentObserver:Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils;->mSettingsContentObserver:Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterListener(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils;->mSettingsContentObserver:Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils;->mSettingsContentObserver:Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    sget-object p1, Lcom/verimatrix/vdc/VolumeUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unregister error. Battery Receiver not registered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lcom/verimatrix/vdc/VolumeUtils;->lastLevel:I

    return-void
.end method
