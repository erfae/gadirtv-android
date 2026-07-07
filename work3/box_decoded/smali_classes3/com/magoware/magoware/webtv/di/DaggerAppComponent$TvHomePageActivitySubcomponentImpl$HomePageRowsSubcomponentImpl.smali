.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl$HomePageRowsSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeHomePageRows$HomePageRowsSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HomePageRowsSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$1",
            "arg0"
        }
    .end annotation

    .line 1404
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl$HomePageRowsSubcomponentImpl;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 1403
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl$HomePageRowsSubcomponentImpl;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    return-void
.end method


# virtual methods
.method public inject(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V
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

    .line 1403
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl$HomePageRowsSubcomponentImpl;->inject(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    return-void
.end method
