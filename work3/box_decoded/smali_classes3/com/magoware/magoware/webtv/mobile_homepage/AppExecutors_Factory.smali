.class public final Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;
.super Ljava/lang/Object;
.source "AppExecutors_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;
    .locals 1

    .line 19
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;

    return-object v0
.end method

.method public static newInstance()Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;
    .locals 1

    .line 23
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;
    .locals 1

    .line 15
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    move-result-object v0

    return-object v0
.end method
