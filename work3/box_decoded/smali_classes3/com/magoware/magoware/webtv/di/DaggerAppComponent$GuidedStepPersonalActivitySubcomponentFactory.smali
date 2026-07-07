.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentFactory;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GuidedStepPersonalActivitySubcomponentFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1558
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentFactory;->this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 1558
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentFactory;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;)Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1562
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentFactory;->this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1558
    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentFactory;->create(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;)Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent;

    move-result-object p1

    return-object p1
.end method
