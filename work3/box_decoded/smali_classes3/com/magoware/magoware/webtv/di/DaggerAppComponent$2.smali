.class Lcom/magoware/magoware/webtv/di/DaggerAppComponent$2;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->initialize(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity$TvHomePageActivitySubcomponent$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$2;->this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity$TvHomePageActivitySubcomponent$Factory;
    .locals 3

    .line 337
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentFactory;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$2;->this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentFactory;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$2;->get()Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity$TvHomePageActivitySubcomponent$Factory;

    move-result-object v0

    return-object v0
.end method
