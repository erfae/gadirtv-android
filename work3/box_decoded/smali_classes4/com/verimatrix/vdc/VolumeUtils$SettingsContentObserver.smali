.class public Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "VolumeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/VolumeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsContentObserver"
.end annotation


# instance fields
.field private batteryLevelListener:Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/verimatrix/vdc/VolumeUtils;


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/VolumeUtils;Landroid/content/Context;Landroid/os/Handler;Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->this$0:Lcom/verimatrix/vdc/VolumeUtils;

    .line 89
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    iput-object p2, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->context:Landroid/content/Context;

    .line 91
    iput-object p4, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->batteryLevelListener:Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 102
    iget-object p1, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/verimatrix/vdc/VolumeUtils;->getCurrentVolumeLevel(Landroid/content/Context;)I

    move-result p1

    .line 103
    iget-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->this$0:Lcom/verimatrix/vdc/VolumeUtils;

    invoke-static {v0}, Lcom/verimatrix/vdc/VolumeUtils;->access$000(Lcom/verimatrix/vdc/VolumeUtils;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->this$0:Lcom/verimatrix/vdc/VolumeUtils;

    invoke-static {v0, p1}, Lcom/verimatrix/vdc/VolumeUtils;->access$002(Lcom/verimatrix/vdc/VolumeUtils;I)I

    .line 105
    iget-object v0, p0, Lcom/verimatrix/vdc/VolumeUtils$SettingsContentObserver;->batteryLevelListener:Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;

    invoke-interface {v0, p1}, Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;->onLevelChanged(I)V

    :cond_0
    return-void
.end method
