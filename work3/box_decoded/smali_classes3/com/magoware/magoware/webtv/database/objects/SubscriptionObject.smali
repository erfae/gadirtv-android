.class public Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "SubscriptionObject.java"


# instance fields
.field public enddate:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public saledate:Ljava/lang/String;

.field public startdate:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;->username:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;->startdate:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;->enddate:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;->saledate:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;->id:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;->name:Ljava/lang/String;

    return-void
.end method
