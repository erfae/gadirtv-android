.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/AppComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private application:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic application(Landroid/app/Application;)Lcom/magoware/magoware/webtv/di/AppComponent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "application"
        }
    .end annotation

    .line 426
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;->application(Landroid/app/Application;)Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public application(Landroid/app/Application;)Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 431
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method public build()Lcom/magoware/magoware/webtv/di/AppComponent;
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;->application:Landroid/app/Application;

    const-class v1, Landroid/app/Application;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 438
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    new-instance v1, Lcom/magoware/magoware/webtv/di/AppModule;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/di/AppModule;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;->application:Landroid/app/Application;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;-><init>(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V

    return-object v0
.end method
