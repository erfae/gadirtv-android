.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GuidedStepPersonalActivitySubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "arg0"
        }
    .end annotation

    .line 1568
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;->this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 1567
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;)V

    return-void
.end method


# virtual methods
.method public inject(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1567
    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;->inject(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;)V

    return-void
.end method
