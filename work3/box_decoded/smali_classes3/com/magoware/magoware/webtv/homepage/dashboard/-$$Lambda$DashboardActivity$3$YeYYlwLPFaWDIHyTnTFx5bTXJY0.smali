.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;->lambda$onReceive$0(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
