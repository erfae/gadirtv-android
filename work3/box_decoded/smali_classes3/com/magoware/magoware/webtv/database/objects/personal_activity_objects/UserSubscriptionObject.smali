.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "UserSubscriptionObject.java"


# instance fields
.field public end_date:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public start_date:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;->package_name:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;->start_date:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;->end_date:Ljava/lang/String;

    return-void
.end method
