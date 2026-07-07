.class Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/UiLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootOuterLayout"
.end annotation


# instance fields
.field private currentConfig:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->this$0:Lcom/google/vr/cardboard/UiLayer;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->currentConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private handlePotentialConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->currentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "UiLayer"

    const-string v1, "Re-inflating UiLayer due to configuration change."

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->currentConfig:Landroid/content/res/Configuration;

    .line 15
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {p1}, Lcom/google/vr/cardboard/UiLayer;->access$1300(Lcom/google/vr/cardboard/UiLayer;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/cardboard/UiLayer;->access$1400(Lcom/google/vr/cardboard/UiLayer;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 5
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 6
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->handlePotentialConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;->handlePotentialConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method
